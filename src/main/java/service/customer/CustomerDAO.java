package service.customer;

import model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO implements CustomerService{
    private String url = "jdbc:mysql://localhost:3306/case_study?useSSL=false";
    private String user = "root";
    private String password = "Doi2thutoc";

    private static final String INSERT_CUSTOMERS_SQL = "{CALL create_customer(?,?,?)}";
    private static final String SELECT_CUSTOMER_BY_ID = "{CALL find_customer_by_id(?)}";
    private static final String SELECT_ALL_CUSTOMERS = "{CALL find_all_customer()}";
    private static final String DELETE_CUSTOMERS_SQL = "{CALL delete_customer(?)};";
    private static final String UPDATE_CUSTOMERS_SQL = "{CALL edit_customer(?,?,?,?,?,?)}";
    private static final String SELECT_CUSTOMERS_BY_PHONE = "{CALL find_customer_by_phone(?)}";

    public Connection getJDBC() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(this.url, this.user, this.password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return connection;
    }

    @Override
    public void addCustomer(Customer customer) throws SQLException {
        try (Connection connection = getJDBC();
             CallableStatement callableStatement = connection.prepareCall(INSERT_CUSTOMERS_SQL);) {
            callableStatement.setString(1, customer.getPhone());
            callableStatement.setString(2, customer.getName());
            callableStatement.setString(3, customer.getFacility());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Customer findCustomer(int id) {
        Customer customer = null;
        try (Connection connection = getJDBC();
             CallableStatement callableStatement = connection.prepareCall(SELECT_CUSTOMER_BY_ID);) {
            callableStatement.setInt(1,id);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                String phone = rs.getString("phone");
                String name = rs.getString("name");
                String facility = rs.getString("facility");
                Timestamp time = rs.getTimestamp("time");
                String status = rs.getString("status");
                customer = new Customer(phone, name, facility, status,time,id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
    }

    public List<Customer> findCustomerByPhone(String phoneNum) {
        List<Customer> customers = new ArrayList<>();
        try (Connection connection = getJDBC();
             CallableStatement callableStatement = connection.prepareCall(SELECT_CUSTOMERS_BY_PHONE);) {
            callableStatement.setString(1,phoneNum);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                String phone = rs.getString("phone");
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String facility = rs.getString("facility");
                Timestamp time = rs.getTimestamp("time");
                String status = rs.getString("status");
                customers.add(new Customer(phone, name, facility, status,time,id));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public List<Customer> findAllCustomers() {
        List<Customer> customers = new ArrayList<>();
        try (Connection connection = getJDBC();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMERS);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String phone = rs.getString("phone");
                String name = rs.getString("name");
                String facility = rs.getString("facility");
                Timestamp time = rs.getTimestamp("time");
                String status = rs.getString("status");
                int id = rs.getInt("id");
                customers.add(new Customer(phone, name, facility, status,time,id));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public void deleteCustomer(int id) throws SQLException {
        try (Connection connection = getJDBC();
             CallableStatement callableStatement = connection.prepareCall(DELETE_CUSTOMERS_SQL);) {
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        }
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getJDBC(); CallableStatement callableStatement = connection.prepareCall(UPDATE_CUSTOMERS_SQL);) {
            callableStatement.setString(1, customer.getPhone());
            callableStatement.setString(2, customer.getName());
            callableStatement.setString(3, customer.getFacility());
            callableStatement.setTimestamp(4, customer.getTime());
            callableStatement.setString(5, customer.getStatus());
            callableStatement.setInt(6, customer.getId());
            rowUpdated = callableStatement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
}

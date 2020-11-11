package service.customer;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public class CustomerManagement implements CustomerService{
    @Override
    public void addCustomer(Customer customer) throws SQLException {

    }

    @Override
    public Customer findCustomer(int phone) {
        return null;
    }

    @Override
    public List<Customer> findAllCustomers() {
        return null;
    }

    @Override
    public void deleteCustomer(int phone) throws SQLException {

    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return false;
    }

    @Override
    public List<Customer> findCustomerByPhone(String numbers) {
        return null;
    }
}

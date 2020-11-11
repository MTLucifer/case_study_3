package service.customer;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface CustomerService {
    void addCustomer(Customer customer) throws SQLException;

    Customer findCustomer(int id);

    List<Customer> findAllCustomers();

    void deleteCustomer(int phone) throws SQLException;

    boolean updateCustomer(Customer customer) throws SQLException;

    List<Customer> findCustomerByPhone(String numbers);
}

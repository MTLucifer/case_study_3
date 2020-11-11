package model;

import java.sql.Timestamp;

public class Customer {
    private String phone,name,facility,status;
    private Timestamp time;
    private int id;
    public Customer() {
    }

    public Customer(String phone, String name, String facility, String status, Timestamp time, int id) {
        this.phone = phone;
        this.name = name;
        this.facility = facility;
        this.status = status;
        this.time = time;
        this.id = id;
    }

    public Customer(String phone, String name, String facility) {
        this.phone = phone;
        this.name = name;
        this.facility = facility;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFacility() {
        return facility;
    }

    public void setFacility(String facility) {
        this.facility = facility;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}

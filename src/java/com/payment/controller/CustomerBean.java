/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.payment.controller;

import java.util.Date;

/**
 *
 * @author user
 */
public class CustomerBean {
    
    private String customerName;
    private String customerAddress;
    private String customerEmail;
    private int customerTanggungan;
    private double customerGaji;
    private double customerPenghasilanTambahan;
    private double limit;
    private Date customerDob;
    private String customerTelepon;

    public CustomerBean() {
    }

    public CustomerBean( String customerName, String customerAddress, String customerEmail, int customerTanggungan, double customerGaji, double customerPenghasilanTambahan, double limit, Date customerDob, String customerTelepon) {
        
        this.customerName = customerName;
        this.customerAddress = customerAddress;
        this.customerEmail = customerEmail;
        this.customerTanggungan = customerTanggungan;
        this.customerGaji = customerGaji;
        this.customerPenghasilanTambahan = customerPenghasilanTambahan;
        this.limit = limit;
        this.customerDob = customerDob;
        this.customerTelepon = customerTelepon;
    }

    

    

    

    
 
    /**
     * @return the customerName
     */
    public String getCustomerName() {
        return customerName;
    }

    /**
     * @param customerName the customerName to set
     */
    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    /**
     * @return the customerAddress
     */
    public String getCustomerAddress() {
        return customerAddress;
    }

    /**
     * @param customerAddress the customerAddress to set
     */
    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    /**
     * @return the customerEmail
     */
    public String getCustomerEmail() {
        return customerEmail;
    }

    /**
     * @param customerEmail the customerEmail to set
     */
    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    /**
     * @return the customerTanggungan
     */
    public int getCustomerTanggungan() {
        return customerTanggungan;
    }

    /**
     * @param customerTanggungan the customerTanggungan to set
     */
    public void setCustomerTanggungan(int customerTanggungan) {
        this.customerTanggungan = customerTanggungan;
    }

    /**
     * @return the customerGaji
     */
    public double getCustomerGaji() {
        return customerGaji;
    }

    /**
     * @param customerGaji the customerGaji to set
     */
    public void setCustomerGaji(double customerGaji) {
        this.customerGaji = customerGaji;
    }

    /**
     * @return the customerPenghasilanTambahan
     */
    public double getCustomerPenghasilanTambahan() {
        return customerPenghasilanTambahan;
    }

    /**
     * @param customerPenghasilanTambahan the customerPenghasilanTambahan to set
     */
    public void setCustomerPenghasilanTambahan(double customerPenghasilanTambahan) {
        this.customerPenghasilanTambahan = customerPenghasilanTambahan;
    }

    /**
     * @return the limit
     */
    public double getLimit() {
        return limit;
    }

    /**
     * @param limit the limit to set
     */
    public void setLimit(double limit) {
        this.limit = limit;
    }

    /**
     * @return the customerDob
     */
    public Date getCustomerDob() {
        return customerDob;
    }

    /**
     * @param customerDob the customerDob to set
     */
    public void setCustomerDob(Date customerDob) {
        this.customerDob = customerDob;
    }

    /**
     * @return the customerTelepon
     */
    public String getCustomerTelepon() {
        return customerTelepon;
    }

    /**
     * @param customerTelepon the customerTelepon to set
     */
    public void setCustomerTelepon(String customerTelepon) {
        this.customerTelepon = customerTelepon;
    }
    
    
}

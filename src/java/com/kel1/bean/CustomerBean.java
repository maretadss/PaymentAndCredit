/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.bean;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author user
 */
public class CustomerBean {

    @NotEmpty
    private String customerName;
    @NotEmpty
    @Email(message = "Email Not Valid")
    private String customerEmail;
    @NotEmpty
    private String customerAddress;
    @NotEmpty
    @Size(min= 11, max = 12, message = "Your number phone must between 11 and 12")
    private String customerTelepon;
    @NotNull(message ="min value is 0")
    private int customerTanggungan;
    @NotNull(message ="min value is 0")
    private Double customerGaji;
    @NotNull(message ="min value is 0")
    private Double customerPenghasilanTambahan;
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
    public Double getCustomerGaji() {
        return customerGaji;
    }

    /**
     * @param customerGaji the customerGaji to set
     */
    public void setCustomerGaji(Double customerGaji) {
        this.customerGaji = customerGaji;
    }

    /**
     * @return the customerPenghasilanTambahan
     */
    public Double getCustomerPenghasilanTambahan() {
        return customerPenghasilanTambahan;
    }

    /**
     * @param customerPenghasilanTambahan the customerPenghasilanTambahan to set
     */
    public void setCustomerPenghasilanTambahan(Double customerPenghasilanTambahan) {
        this.customerPenghasilanTambahan = customerPenghasilanTambahan;
    }
    
    /**
     * @param customerId the customerId to set
     */

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

/*

 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.payment.controller;

import com.payment.dao.CustomerDAO;
import com.payment.model.Customer;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {
    
    @Autowired
    CustomerDAO custdao;
    
    @RequestMapping("/formcustomer")
    public String fillCustomer(Model model){
        CustomerBean customerBean = new CustomerBean();
        model.addAttribute("customerBean",customerBean);
        return "customerform";
    }
    
    @RequestMapping("/savecustomer")
    public String saveCustomer(@Valid @ModelAttribute("customerBean") CustomerBean customerBean
            ,BindingResult result,Model model){
        Customer customer = new Customer();
        
        if (result.hasErrors()) {
            return "customerform";
        }
        customer.setCustomerName(customerBean.getCustomerName());
        customer.setCustomerAddress(customerBean.getCustomerAddress());
        customer.setCustomerDob(customerBean.getCustomerDob());
        customer.setCustomerEmail(customerBean.getCustomerEmail());
        customer.setCustomerTelepon(customerBean.getCustomerTelepon());
        customer.setCustomerTanggungan(customerBean.getCustomerTanggungan());
        customer.setCustomerGaji(customerBean.getCustomerGaji());
        customer.setCustomerPenghasilanTambahan(customerBean.getCustomerPenghasilanTambahan());
        
        custdao.saveCustomer(customer);
        
        model.addAttribute("data",customerBean);
        return "hasilhitung";
    }
}

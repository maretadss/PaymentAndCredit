/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and pen the template in the editor.
 */
package com.kel1.controller;

import com.kel1.bean.CustomerBean;
import com.kel1.dao.CustomerDao;
import com.kel1.entity.Admin;
import com.kel1.entity.Customer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    CustomerDao us;

    @RequestMapping("")
    public String toIndex(Model model) {
        List<Customer> cust = us.showExistCustomer();
        model.addAttribute("admins", cust);
        return "customerView";
    }

    @RequestMapping("/edit/{id}")
    public String edit(HttpSession session, @PathVariable Integer id, Model model) {
        Customer custo = us.findById(id);
        CustomerBean customerBean = new CustomerBean();
        model.addAttribute("customerBean", customerBean);
        model.addAttribute("customer", custo);
        session.setAttribute("admin2", custo);
        return "editCustomer";
    }

    @RequestMapping("/saveEdit")
    public String saveEdit(HttpSession session, @Valid @ModelAttribute("customerBean") CustomerBean customerBean, BindingResult result, Model model) {
        if(result.hasErrors()){
         return "editCustomer";
        }
         
        Customer customer = (Customer) session.getAttribute("admin2");
        Admin admin = (Admin) session.getAttribute("user");

        customer.setCustomerName(customerBean.getCustomerName());
        customer.setCustomerUpdatedby(admin.getUsername());
        SimpleDateFormat tggl = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
        customer.setCustomerUpdatedtime(tggl.format(new Date()));
        customer.setCustomerEmail(customerBean.getCustomerEmail());
        customer.setCustomerAddress(customerBean.getCustomerAddress());
        customer.setCustomerTelepon(customerBean.getCustomerTelepon());
        customer.setCustomerGaji(customerBean.getCustomerGaji());
        customer.setCustomerPenghasilanTambahan(customerBean.getCustomerPenghasilanTambahan());
        customer.setCustomerTanggungan(customerBean.getCustomerTanggungan());
        us.editCustomer(customer);

        //model.addAttribute("customerBean", customerBean);
        return "redirect:/customer";
    }

    @RequestMapping("/delete/{id}")
    public String deleteCustomer(@PathVariable Integer id, Model model) {
        Customer custo = us.findById(id);
        custo.setCustomerFlag("n");
        us.delCustomer(custo);

        return "redirect:/customer";
    }

}
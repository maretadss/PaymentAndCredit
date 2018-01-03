/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.controller;

import com.kel1.bean.CustomerBean;
import com.kel1.dao.UserService;
import com.kel1.entity.Admin;
import com.kel1.entity.Customer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
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
@RequestMapping("/welcome")
public class WelcomeController {

    @Autowired
    UserService us;

    @RequestMapping()
    public String welcomePage() {
        return "welcomeadmin";
    }

    @RequestMapping("/edit/{id}")
    public String edit(HttpSession session, @PathVariable Integer id, Map<String, Object > map, Model model) {
        Customer custo = us.findById(id);
        map.put("customer", custo);
        CustomerBean customerBean = new CustomerBean();
        model.addAttribute("customerBean", customerBean);
        session.setAttribute("admin2",custo);
        return "editCustomer";
        
    }
    
    @RequestMapping("/saveEdit")
    public String saveEdit( HttpSession session, @ModelAttribute("customerBean") CustomerBean customerBean, Model model){
            Customer customer = (Customer) session.getAttribute("admin2");
            Admin admin = (Admin) session.getAttribute("user");
  
            customer.setCustomerName(customerBean.getCustomerName());
            customer.setCustomerUpdatedby(admin.getUsername());
            SimpleDateFormat tggl = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
            customer.setCustomerUpdatedtime(tggl.format(new Date()));
            customer.setCustomerEmail(customerBean.getCustomerEmail());
            customer.setCustomerAddress(customerBean.getCustomerAddress());
            customer.setCustomerTelepon(customerBean.getCustomerTelepon());
            us.editCustomer(customer);

            //model.addAttribute("customerBean", customerBean);
            
        return "redirect:/welcome/customer";
    }

    @RequestMapping("/customer")
    public String toIndex(Model model) {
        List<Customer> cust = us.showExistCustomer();
        model.addAttribute("admins", cust);
        for (Customer customer : cust) {
            System.out.println("ID: " + customer.getCustomerId());
            System.out.println("Name: " + customer.getCustomerName());
            System.out.println("Gaji: " + customer.getCustomerGaji());
        }
//        List<Credit> creditz = us.showCreditUnapproved();
//        model.addAttribute("adminz", creditz);
        return "test";
    }

    @RequestMapping("/delete/{id}")
    public String deleteCredit(@PathVariable Integer id, Model model) {
        Customer custo = us.findById(id);
        custo.setCustomerFlag("n");
        us.delCustomer(custo);

        return "redirect:/welcome/customer";
    }

}

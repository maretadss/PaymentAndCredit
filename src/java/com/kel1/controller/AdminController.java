/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.controller;

import com.kel1.bean.AdminBean;
import com.kel1.dao.AdminDao;
import com.kel1.entity.Admin;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
//<<<<<<< HEAD
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
//@Controller
//@RequestMapping("/admin")
//public class AdminController {
//    
//    @Autowired
//    AdminDao ad;
//    
//    @RequestMapping("")
//    public String toIndex(Model model) {
//        List<Admin> admins = ad.showExistAdmin();
//        model.addAttribute("admins", admins);
//        
//        for (Admin admin : admins) {
//            System.out.println("ID: " + admin.getUserid());
//            System.out.println("Username: " + admin.getUsername());
//            System.out.println("Password: " + admin.getPassword());
//        }
//        
//        return "admin";
//    }
//    
//    @RequestMapping("/add")
//    public String addAdmin(HttpSession session, @ModelAttribute("adminForm") AdminBean adminBean, Model model) {
//        Admin adminRoot = (Admin) session.getAttribute("user");
//        Admin admin = new Admin();
//        
//        admin.setUsername(adminBean.getUsername());
//        admin.setPassword(adminBean.getPassword());
//        admin.setAdminCreatedby(adminRoot.getUsername());
//        SimpleDateFormat tggl = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
//        admin.setAdminCreatedtime(tggl.format(new Date()));
//        admin.setAdminFlag("y");
//        
//        ad.addAdmin(admin);
//        
//        return "";
//    }
//    
//    @RequestMapping("/edit/{id}")
//    public String edit(HttpSession session, @PathVariable Integer id, Model model) {
//        Admin admin = ad.findById(id);
//        AdminBean adminBean = new AdminBean();
//        
//        model.addAttribute("adminBean", adminBean);
//        session.setAttribute("user",admin);
//        
//        return "";
//        
//    }
//    
//    @RequestMapping("/saveEdit")
//    public String saveEdit( HttpSession session, @ModelAttribute("adminBean") AdminBean adminBean, Model model){
//            Admin admin = (Admin) session.getAttribute("user");
//  
//            admin.setUsername(adminBean.getUsername());
//            admin.setPassword(adminBean.getPassword());
//            admin.setAdminUpdatedby(admin.getAdminUpdatedby());
//            SimpleDateFormat tggl = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
//            admin.setAdminUpdatedtime(tggl.format(new Date()));
//            
//            ad.editAdmin(admin);
//            
//        return "";
//    }
//    
//    @RequestMapping("/delete/{id}")
//    public String deleteCredit(@PathVariable Integer id, Model model) {
//        Admin admin = ad.findById(id);
//        admin.setAdminFlag("n");
//        
//        ad.delAdmin(admin);
//        
//        return "";
//=======
//import javax.validation.Valid;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    
    @Autowired
    AdminDao ad;
    
    @RequestMapping("")
    public String toIndex(Model model) {
        List<Admin> admins = ad.showExistAdmin();
        model.addAttribute("admins", admins);
        return "admin";
    }
    
    @RequestMapping("/add")
    public String addAdmin(Model model) {
        AdminBean adminBean = new AdminBean();
        model.addAttribute("adminBean", adminBean);
        
        return "tambahAdmin";
    }
    
    @RequestMapping("/saveAdd")
    public String saveAddAdmin(HttpSession session, @Valid @ModelAttribute("adminBean") AdminBean adminBean, BindingResult result, Model model) {
         if(result.hasErrors()){
                return "tambahAdmin";
            
            }
        Admin adminRoot = (Admin) session.getAttribute("user");
        Admin admin = new Admin();
        
        admin.setUsername(adminBean.getUsername());
        admin.setPassword(adminBean.getPassword());
        admin.setAdminCreatedby(adminRoot.getUsername());
        SimpleDateFormat tggl = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
        admin.setAdminCreatedtime(tggl.format(new Date()));
        admin.setAdminFlag("y");
        
        ad.addAdmin(admin);
        
        return "redirect:/admin";
    }
    
    @RequestMapping("/edit/{id}")
    public String edit(HttpSession session, @PathVariable Integer id, Model model) {
        Admin admin = ad.findById(id);
        AdminBean adminBean = new AdminBean();
        
        model.addAttribute("adminBean", adminBean);
        session.setAttribute("user1",admin);
        
        return "editAdmin";
        
    }
    
    @RequestMapping("/saveEdit")
    public String saveEdit(HttpSession session, @Valid @ModelAttribute("adminBean") AdminBean adminBean, BindingResult result, Model model){
            if(result.hasErrors()){
                return "editAdmin";
            
            }
            Admin adminRoot = (Admin) session.getAttribute("user");
            Admin admin = (Admin) session.getAttribute("user1");
  
            admin.setUsername(adminBean.getUsername());
            admin.setPassword(adminBean.getPassword());
            admin.setAdminUpdatedby(adminRoot.getUsername());
            SimpleDateFormat tggl = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
            admin.setAdminUpdatedtime(tggl.format(new Date()));
            
            ad.editAdmin(admin);
            
        return "redirect:/admin";
    }
    
    @RequestMapping("/delete/{id}")
    public String deleteCredit(@PathVariable Integer id, Model model) {
        Admin admin = ad.findById(id);
        admin.setAdminFlag("n");
        
        ad.delAdmin(admin);
        
        return "redirect:/admin";
//>>>>>>> origin/master
    }

}

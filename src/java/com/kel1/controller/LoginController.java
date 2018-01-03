/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.controller;

/**
 *
 * @author user
*/


import com.kel1.bean.LoginFormBean;
import com.kel1.dao.UserService;
import com.kel1.entity.Admin;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

    @Autowired
    UserService us;
    
    @RequestMapping("")
    public String goToLogin(Model model) {
        LoginFormBean loginBean = new LoginFormBean();
        model.addAttribute("loginBean", loginBean);
        return "loginuser";
    }

    @RequestMapping(value = "/check")
    public String checkLogin(HttpSession session, @ModelAttribute("loginBean") LoginFormBean loginBean, Model model) {
        Admin admin = us.findByUsername(loginBean.getUsername());
        if(admin.getUsername()==null) {
            model.addAttribute("errMsg", "Wrong Username");
            
            return "loginuser";
        }
        if (!admin.getPassword().equals(loginBean.getPassword())) {
                model.addAttribute("errMsg", "Wrong Password");
                return "loginuser";
            }
        
        
        session.setAttribute("user", admin);
        
        return "redirect:/welcome";
    }
    
    @RequestMapping("/logout")
    public String logout(HttpSession session, Model model) {
        session.invalidate();
        return "redirect:/login";
    }
}


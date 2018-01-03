/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/home")
public class homeController {
    
    @RequestMapping()
    public String goToHome(Model model){
                Credit kredit = new Credit();
        model.addAttribute("credit", kredit);
        return "home";
    }      
}

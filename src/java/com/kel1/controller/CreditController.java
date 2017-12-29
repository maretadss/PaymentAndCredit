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

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/credit")
public class CreditController {
    
    @RequestMapping()
    public String credit(Model model){
        Credit kredit = new Credit();
        model.addAttribute("credit", kredit);
        return "home";
    }
    
    @RequestMapping(value="/check")
    public String checkCredit(@ModelAttribute("credit") Credit credit, Model model){
        
        model.addAttribute("pokok", credit.pokokCicilan());
        model.addAttribute("bunga", credit.bungaCicilan());
        model.addAttribute("total", credit.totalKredit());
        model.addAttribute("cic3ilan", credit.cicilanPerbulan());
        model.addAttribute("penghasilan", credit.penghasilanPerbulan());
        model.addAttribute("limit", credit.limit());
        model.addAttribute("setuju", credit.isSetuju());
        
        return "simulasi";
    }
    
}

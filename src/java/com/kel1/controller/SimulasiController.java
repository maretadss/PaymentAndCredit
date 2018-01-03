/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.controller;

import com.kel1.bean.SimulasiBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/simulasi")
public class SimulasiController {
     
    @RequestMapping
    public String credit(Model model){
        SimulasiBean sim = new SimulasiBean();
        model.addAttribute("credit", sim);
        return "formsimulasi";
    }
    
    @RequestMapping(value="/check")
    public String checkCredit(@ModelAttribute("credit") SimulasiBean credit, Model model){
        
        model.addAttribute("pokok", credit.pokokCicilan());
        model.addAttribute("bunga", credit.bungaCicilan());
        model.addAttribute("total", credit.totalKredit());
        model.addAttribute("cicilan", credit.cicilanPerbulan());
        model.addAttribute("penghasilan", credit.penghasilanPerbulan());
        model.addAttribute("limit", credit.limit());
        model.addAttribute("setuju", credit.isSetuju());
        
        return "simulasi";
    }
}

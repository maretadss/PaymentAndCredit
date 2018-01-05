/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.controller;

import com.kel1.bean.BayarBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/payment")
public class BayarController {
    @RequestMapping
    public String payment(Model model){
        BayarBean paid = new BayarBean();
        model.addAttribute("paid", paid);
        return"formpembayaran";
    }
}

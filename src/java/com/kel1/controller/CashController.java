/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.controller;

import com.kel1.dao.CashDao;
import com.kel1.entity.Cash;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
@Controller
@RequestMapping("/cash")
public class CashController {

    @Autowired
    CashDao cd;
    
    @RequestMapping("")
    public String Cash(Model model) {
        List<Cash> cashs = cd.showExisCash();
        model.addAttribute("cash", cashs);
        return "cashView";
    }

    @RequestMapping("/deleteCash/{id}")
    public String deleteCash(@PathVariable Integer id, Model model) {
        Cash cash = cd.findCashById(id);
        cash.setCashFlag("n");
        
        cd.delCash(cash);

        return "redirect:/cash";
    }
}

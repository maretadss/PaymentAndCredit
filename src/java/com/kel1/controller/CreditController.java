/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.controller;

import com.kel1.bean.CreditFormBean;
import com.kel1.dao.CreditDAO;
import com.kel1.entity.Admin;
import com.kel1.entity.Credit;
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
@RequestMapping("/credit")
public class CreditController {
    
    @Autowired
    CreditDAO creditDao;
    
    @RequestMapping()
    public String credit(Model model){
        List<Credit> credits = creditDao.showCreditApproved();
        model.addAttribute("credits", credits);
        
        List<Credit> creditz = creditDao.showCreditUnpproved();
        model.addAttribute("creditz",creditz);
        return "credit";
    }
    
    @RequestMapping("/delete/{id}")
    public String deleteCredit(HttpSession session, @PathVariable Integer id, Model model){
        Admin admin = (Admin) session.getAttribute("user");
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
        String tanggal = sdf.format(new Date());        
        Credit credit = creditDao.findCreditById(id);
        credit.setCreditFlag("n");
        credit.setCreditUpdatedby(admin.getUsername());
        credit.setCreditUpdatedtime(tanggal);
        creditDao.editCredit(credit);
        
        return "redirect:/credit";
    }
    
    @RequestMapping("/edit/{id}")
    public String editCredit(HttpSession session, @PathVariable Integer id, Model model){
        Credit credit = creditDao.findCreditById(id);
        CreditFormBean creditBean = new CreditFormBean();
        session.setAttribute("credit", credit);
        model.addAttribute("creditBean", creditBean);
        return "editcredit";
    }
    
    @RequestMapping("/edit/save")
    public String saveEditCredit(HttpSession session, @Valid @ModelAttribute("creditBean") CreditFormBean creditBean, BindingResult result,  Model model){
         if(result.hasErrors()){
                return "editcredit";
            
            }
        Admin admin = (Admin) session.getAttribute("user");
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
        String tanggal = sdf.format(new Date());
        Credit credit = (Credit) session.getAttribute("credit");
        credit.setCreditBasePrice(creditBean.getCreditBasePrice());
        credit.setCreditDownPayment(creditBean.getCreditDownPayment());
        credit.setCreditDuration(creditBean.getCreditDuration());
        
        double pokokCicilan = creditBean.getCreditBasePrice() - creditBean.getCreditDownPayment();
        double bungaCicilan = ((pokokCicilan * creditBean.getCreditInterestRate() * creditBean.getCreditDuration())/12);
        double bungaKredit = pokokCicilan + bungaCicilan;
        
        credit.setCreditInterestRate(creditBean.getCreditInterestRate());
        credit.setCreditTotal(bungaKredit + creditBean.getCreditDownPayment());
        credit.setCreditMonthlyInstallment(bungaKredit/creditBean.getCreditDuration());
        
        credit.setCreditUpdatedby(admin.getUsername());
        credit.setCreditUpdatedtime(tanggal);
        creditDao.editCredit(credit);
        return "redirect:/credit";
    }
    
    @RequestMapping("/approve/{id}")
    public String approveCredit(HttpSession session, @PathVariable Integer id, Model model){
        Admin admin = (Admin) session.getAttribute("user");
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
        String tanggal = sdf.format(new Date());
        Credit credit = creditDao.findCreditById(id);
        credit.setCreditStatus("approved");
        credit.setCreditUpdatedby(admin.getUsername());
        credit.setCreditUpdatedtime(tanggal);
        creditDao.editCredit(credit);
        return "redirect:/credit";
    }
}

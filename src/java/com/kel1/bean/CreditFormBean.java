/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.bean;

//<<<<<<< HEAD
///**
// *
// * @author user
// */
//public class CreditFormBean {
//    private int creditDuration;
//    private double creditBasePrice;
//    private double creditInterestRate;
//    private double creditDownPayment;
//    private double creditTotal;
//=======
import javax.validation.constraints.NotNull;

/**
 *
 * @author user
 */
public class CreditFormBean {
    @NotNull(message ="min value is 0")
    private int creditDuration;
    @NotNull(message ="min value is 0")
    private double creditBasePrice;
    @NotNull(message ="min value is 0")
    private double creditInterestRate;
    @NotNull(message ="min value is 0")
    private double creditDownPayment;
    @NotNull(message ="min value is 0")
    private double creditTotal;
    @NotNull(message ="min value is 0")
//>>>>>>> origin/master
    private double creditMonthlyInstallment;

    /**
     * @return the creditDuration
     */
    public int getCreditDuration() {
        return creditDuration;
    }

    /**
     * @param creditDuration the creditDuration to set
     */
    public void setCreditDuration(int creditDuration) {
        this.creditDuration = creditDuration;
    }

    /**
     * @return the creditBasePrice
     */
    public double getCreditBasePrice() {
        return creditBasePrice;
    }

    /**
     * @param creditBasePrice the creditBasePrice to set
     */
    public void setCreditBasePrice(double creditBasePrice) {
        this.creditBasePrice = creditBasePrice;
    }

    /**
     * @return the creditInterestRate
     */
    public double getCreditInterestRate() {
        return creditInterestRate;
    }

    /**
     * @param creditInterestRate the creditInterestRate to set
     */
    public void setCreditInterestRate(double creditInterestRate) {
        this.creditInterestRate = creditInterestRate;
    }

    /**
     * @return the creditDownPayment
     */
    public double getCreditDownPayment() {
        return creditDownPayment;
    }

    /**
     * @param creditDownPayment the creditDownPayment to set
     */
    public void setCreditDownPayment(double creditDownPayment) {
        this.creditDownPayment = creditDownPayment;
    }

    /**
     * @return the creditTotal
     */
    public double getCreditTotal() {
        return creditTotal;
    }

    /**
     * @param creditTotal the creditTotal to set
     */
    public void setCreditTotal(double creditTotal) {
        this.creditTotal = creditTotal;
    }

    /**
     * @return the creditMonthlyInstallment
     */
    public double getCreditMonthlyInstallment() {
        return creditMonthlyInstallment;
    }

    /**
     * @param creditMonthlyInstallment the creditMonthlyInstallment to set
     */
    public void setCreditMonthlyInstallment(double creditMonthlyInstallment) {
        this.creditMonthlyInstallment = creditMonthlyInstallment;
    }
    
    
}

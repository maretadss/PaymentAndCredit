/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author user
 */
@Entity
@Table(name = "credit")
@NamedQueries({
    @NamedQuery(name = "Credit.findAll", query = "SELECT c FROM Credit c")
    , @NamedQuery(name = "Credit.findByCreditId", query = "SELECT c FROM Credit c WHERE c.creditId = :creditId")
    , @NamedQuery(name = "Credit.findByCreditStartDate", query = "SELECT c FROM Credit c WHERE c.creditStartDate = :creditStartDate")
    , @NamedQuery(name = "Credit.findByCreditDuration", query = "SELECT c FROM Credit c WHERE c.creditDuration = :creditDuration")
    , @NamedQuery(name = "Credit.findByCreditBasePrice", query = "SELECT c FROM Credit c WHERE c.creditBasePrice = :creditBasePrice")
    , @NamedQuery(name = "Credit.findByCreditInterestRate", query = "SELECT c FROM Credit c WHERE c.creditInterestRate = :creditInterestRate")
    , @NamedQuery(name = "Credit.findByCreditDownPayment", query = "SELECT c FROM Credit c WHERE c.creditDownPayment = :creditDownPayment")
    , @NamedQuery(name = "Credit.findByCreditTotal", query = "SELECT c FROM Credit c WHERE c.creditTotal = :creditTotal")
    , @NamedQuery(name = "Credit.findByCreditMonthlyInstallment", query = "SELECT c FROM Credit c WHERE c.creditMonthlyInstallment = :creditMonthlyInstallment")
    , @NamedQuery(name = "Credit.findByCreditStatus", query = "SELECT c FROM Credit c WHERE c.creditStatus = :creditStatus")
    , @NamedQuery(name = "Credit.findByCreditCreatedby", query = "SELECT c FROM Credit c WHERE c.creditCreatedby = :creditCreatedby")
    , @NamedQuery(name = "Credit.findByCreditUpdatedby", query = "SELECT c FROM Credit c WHERE c.creditUpdatedby = :creditUpdatedby")
    , @NamedQuery(name = "Credit.findByCreditCreatedtime", query = "SELECT c FROM Credit c WHERE c.creditCreatedtime = :creditCreatedtime")
    , @NamedQuery(name = "Credit.findByCreditUpdatedtime", query = "SELECT c FROM Credit c WHERE c.creditUpdatedtime = :creditUpdatedtime")
    , @NamedQuery(name = "Credit.findByCreditFlag", query = "SELECT c FROM Credit c WHERE c.creditFlag = :creditFlag")})
public class Credit implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "credit_id")
    private Integer creditId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "credit_start_date")
    private String creditStartDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "credit_duration")
    private int creditDuration;
    @Basic(optional = false)
    @NotNull
    @Column(name = "credit_base_price")
    private double creditBasePrice;
    @Basic(optional = false)
    @NotNull
    @Column(name = "credit_interest_rate")
    private double creditInterestRate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "credit_down_payment")
    private double creditDownPayment;
    @Basic(optional = false)
    @NotNull
    @Column(name = "credit_total")
    private double creditTotal;
    @Basic(optional = false)
    @NotNull
    @Column(name = "credit_monthly_installment")
    private double creditMonthlyInstallment;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "credit_status")
    private String creditStatus;
    @Size(max = 50)
    @Column(name = "credit_createdby")
    private String creditCreatedby;
    @Size(max = 50)
    @Column(name = "credit_updatedby")
    private String creditUpdatedby;
    @Size(max = 50)
    @Column(name = "credit_createdtime")
    private String creditCreatedtime;
    @Size(max = 50)
    @Column(name = "credit_updatedtime")
    private String creditUpdatedtime;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "credit_flag")
    private String creditFlag;
    @JoinColumn(name = "payment_id", referencedColumnName = "payment_id")
    @ManyToOne(optional = false)
    private Payment paymentId;

    public Credit() {
    }

    public Credit(Integer creditId) {
        this.creditId = creditId;
    }

    public Credit(Integer creditId, String creditStartDate, int creditDuration, double creditBasePrice, double creditInterestRate, double creditDownPayment, double creditTotal, double creditMonthlyInstallment, String creditStatus, String creditFlag) {
        this.creditId = creditId;
        this.creditStartDate = creditStartDate;
        this.creditDuration = creditDuration;
        this.creditBasePrice = creditBasePrice;
        this.creditInterestRate = creditInterestRate;
        this.creditDownPayment = creditDownPayment;
        this.creditTotal = creditTotal;
        this.creditMonthlyInstallment = creditMonthlyInstallment;
        this.creditStatus = creditStatus;
        this.creditFlag = creditFlag;
    }

    public Integer getCreditId() {
        return creditId;
    }

    public void setCreditId(Integer creditId) {
        this.creditId = creditId;
    }

    public String getCreditStartDate() {
        return creditStartDate;
    }

    public void setCreditStartDate(String creditStartDate) {
        this.creditStartDate = creditStartDate;
    }

    public int getCreditDuration() {
        return creditDuration;
    }

    public void setCreditDuration(int creditDuration) {
        this.creditDuration = creditDuration;
    }

    public double getCreditBasePrice() {
        return creditBasePrice;
    }

    public void setCreditBasePrice(double creditBasePrice) {
        this.creditBasePrice = creditBasePrice;
    }

    public double getCreditInterestRate() {
        return creditInterestRate;
    }

    public void setCreditInterestRate(double creditInterestRate) {
        this.creditInterestRate = creditInterestRate;
    }

    public double getCreditDownPayment() {
        return creditDownPayment;
    }

    public void setCreditDownPayment(double creditDownPayment) {
        this.creditDownPayment = creditDownPayment;
    }

    public double getCreditTotal() {
        return creditTotal;
    }

    public void setCreditTotal(double creditTotal) {
        this.creditTotal = creditTotal;
    }

    public double getCreditMonthlyInstallment() {
        return creditMonthlyInstallment;
    }

    public void setCreditMonthlyInstallment(double creditMonthlyInstallment) {
        this.creditMonthlyInstallment = creditMonthlyInstallment;
    }

    public String getCreditStatus() {
        return creditStatus;
    }

    public void setCreditStatus(String creditStatus) {
        this.creditStatus = creditStatus;
    }

    public String getCreditCreatedby() {
        return creditCreatedby;
    }

    public void setCreditCreatedby(String creditCreatedby) {
        this.creditCreatedby = creditCreatedby;
    }

    public String getCreditUpdatedby() {
        return creditUpdatedby;
    }

    public void setCreditUpdatedby(String creditUpdatedby) {
        this.creditUpdatedby = creditUpdatedby;
    }

    public String getCreditCreatedtime() {
        return creditCreatedtime;
    }

    public void setCreditCreatedtime(String creditCreatedtime) {
        this.creditCreatedtime = creditCreatedtime;
    }

    public String getCreditUpdatedtime() {
        return creditUpdatedtime;
    }

    public void setCreditUpdatedtime(String creditUpdatedtime) {
        this.creditUpdatedtime = creditUpdatedtime;
    }

    public String getCreditFlag() {
        return creditFlag;
    }

    public void setCreditFlag(String creditFlag) {
        this.creditFlag = creditFlag;
    }

    public Payment getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Payment paymentId) {
        this.paymentId = paymentId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (creditId != null ? creditId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Credit)) {
            return false;
        }
        Credit other = (Credit) object;
        if ((this.creditId == null && other.creditId != null) || (this.creditId != null && !this.creditId.equals(other.creditId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.kel1.entity.Credit[ creditId=" + creditId + " ]";
    }
    
}

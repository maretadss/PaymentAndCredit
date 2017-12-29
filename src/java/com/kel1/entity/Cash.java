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
@Table(name = "cash")
@NamedQueries({
    @NamedQuery(name = "Cash.findAll", query = "SELECT c FROM Cash c")
    , @NamedQuery(name = "Cash.findByCashId", query = "SELECT c FROM Cash c WHERE c.cashId = :cashId")
    , @NamedQuery(name = "Cash.findByCashPrice", query = "SELECT c FROM Cash c WHERE c.cashPrice = :cashPrice")
    , @NamedQuery(name = "Cash.findByCashDate", query = "SELECT c FROM Cash c WHERE c.cashDate = :cashDate")
    , @NamedQuery(name = "Cash.findByCashStatus", query = "SELECT c FROM Cash c WHERE c.cashStatus = :cashStatus")
    , @NamedQuery(name = "Cash.findByCashCreatedby", query = "SELECT c FROM Cash c WHERE c.cashCreatedby = :cashCreatedby")
    , @NamedQuery(name = "Cash.findByCashUpdatedby", query = "SELECT c FROM Cash c WHERE c.cashUpdatedby = :cashUpdatedby")
    , @NamedQuery(name = "Cash.findByCashCreatedtime", query = "SELECT c FROM Cash c WHERE c.cashCreatedtime = :cashCreatedtime")
    , @NamedQuery(name = "Cash.findByCashUpdatedtime", query = "SELECT c FROM Cash c WHERE c.cashUpdatedtime = :cashUpdatedtime")
    , @NamedQuery(name = "Cash.findByCashFlag", query = "SELECT c FROM Cash c WHERE c.cashFlag = :cashFlag")})
public class Cash implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "cash_id")
    private Integer cashId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "cash_price")
    private double cashPrice;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "cash_date")
    private String cashDate;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "cash_status")
    private String cashStatus;
    @Size(max = 50)
    @Column(name = "cash_createdby")
    private String cashCreatedby;
    @Size(max = 50)
    @Column(name = "cash_updatedby")
    private String cashUpdatedby;
    @Size(max = 50)
    @Column(name = "cash_createdtime")
    private String cashCreatedtime;
    @Size(max = 50)
    @Column(name = "cash_updatedtime")
    private String cashUpdatedtime;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "cash_flag")
    private String cashFlag;
    @JoinColumn(name = "payment_id", referencedColumnName = "payment_id")
    @ManyToOne(optional = false)
    private Payment paymentId;

    public Cash() {
    }

    public Cash(Integer cashId) {
        this.cashId = cashId;
    }

    public Cash(Integer cashId, double cashPrice, String cashDate, String cashStatus, String cashFlag) {
        this.cashId = cashId;
        this.cashPrice = cashPrice;
        this.cashDate = cashDate;
        this.cashStatus = cashStatus;
        this.cashFlag = cashFlag;
    }

    public Integer getCashId() {
        return cashId;
    }

    public void setCashId(Integer cashId) {
        this.cashId = cashId;
    }

    public double getCashPrice() {
        return cashPrice;
    }

    public void setCashPrice(double cashPrice) {
        this.cashPrice = cashPrice;
    }

    public String getCashDate() {
        return cashDate;
    }

    public void setCashDate(String cashDate) {
        this.cashDate = cashDate;
    }

    public String getCashStatus() {
        return cashStatus;
    }

    public void setCashStatus(String cashStatus) {
        this.cashStatus = cashStatus;
    }

    public String getCashCreatedby() {
        return cashCreatedby;
    }

    public void setCashCreatedby(String cashCreatedby) {
        this.cashCreatedby = cashCreatedby;
    }

    public String getCashUpdatedby() {
        return cashUpdatedby;
    }

    public void setCashUpdatedby(String cashUpdatedby) {
        this.cashUpdatedby = cashUpdatedby;
    }

    public String getCashCreatedtime() {
        return cashCreatedtime;
    }

    public void setCashCreatedtime(String cashCreatedtime) {
        this.cashCreatedtime = cashCreatedtime;
    }

    public String getCashUpdatedtime() {
        return cashUpdatedtime;
    }

    public void setCashUpdatedtime(String cashUpdatedtime) {
        this.cashUpdatedtime = cashUpdatedtime;
    }

    public String getCashFlag() {
        return cashFlag;
    }

    public void setCashFlag(String cashFlag) {
        this.cashFlag = cashFlag;
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
        hash += (cashId != null ? cashId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Cash)) {
            return false;
        }
        Cash other = (Cash) object;
        if ((this.cashId == null && other.cashId != null) || (this.cashId != null && !this.cashId.equals(other.cashId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.kel1.entity.Cash[ cashId=" + cashId + " ]";
    }
    
}

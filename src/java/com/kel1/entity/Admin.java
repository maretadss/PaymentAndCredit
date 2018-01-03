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
@Table(name = "admin")
@NamedQueries({
    @NamedQuery(name = "Admin.findAll", query = "SELECT a FROM Admin a")
    , @NamedQuery(name = "Admin.findByUserid", query = "SELECT a FROM Admin a WHERE a.userid = :userid")
    , @NamedQuery(name = "Admin.findByUsername", query = "SELECT a FROM Admin a WHERE a.username = :username")
    , @NamedQuery(name = "Admin.findByPassword", query = "SELECT a FROM Admin a WHERE a.password = :password")
    , @NamedQuery(name = "Admin.findByAdminCreatedby", query = "SELECT a FROM Admin a WHERE a.adminCreatedby = :adminCreatedby")
    , @NamedQuery(name = "Admin.findByAdminUpdatedby", query = "SELECT a FROM Admin a WHERE a.adminUpdatedby = :adminUpdatedby")
    , @NamedQuery(name = "Admin.findByAdminCreatedtime", query = "SELECT a FROM Admin a WHERE a.adminCreatedtime = :adminCreatedtime")
    , @NamedQuery(name = "Admin.findByAdminUpdatedtime", query = "SELECT a FROM Admin a WHERE a.adminUpdatedtime = :adminUpdatedtime")
    , @NamedQuery(name = "Admin.findByAdminFlag", query = "SELECT a FROM Admin a WHERE a.adminFlag = :adminFlag")})
public class Admin implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "userid")
    private Integer userid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "username")
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "password")
    private String password;
    @Size(max = 50)
    @Column(name = "admin_createdby")
    private String adminCreatedby;
    @Size(max = 50)
    @Column(name = "admin_updatedby")
    private String adminUpdatedby;
    @Size(max = 50)
    @Column(name = "admin_createdtime")
    private String adminCreatedtime;
    @Size(max = 50)
    @Column(name = "admin_updatedtime")
    private String adminUpdatedtime;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "admin_flag")
    private String adminFlag;

    public Admin() {
    }

    public Admin(Integer userid) {
        this.userid = userid;
    }

    public Admin(Integer userid, String username, String password, String adminFlag) {
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.adminFlag = adminFlag;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAdminCreatedby() {
        return adminCreatedby;
    }

    public void setAdminCreatedby(String adminCreatedby) {
        this.adminCreatedby = adminCreatedby;
    }

    public String getAdminUpdatedby() {
        return adminUpdatedby;
    }

    public void setAdminUpdatedby(String adminUpdatedby) {
        this.adminUpdatedby = adminUpdatedby;
    }

    public String getAdminCreatedtime() {
        return adminCreatedtime;
    }

    public void setAdminCreatedtime(String adminCreatedtime) {
        this.adminCreatedtime = adminCreatedtime;
    }

    public String getAdminUpdatedtime() {
        return adminUpdatedtime;
    }

    public void setAdminUpdatedtime(String adminUpdatedtime) {
        this.adminUpdatedtime = adminUpdatedtime;
    }

    public String getAdminFlag() {
        return adminFlag;
    }

    public void setAdminFlag(String adminFlag) {
        this.adminFlag = adminFlag;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userid != null ? userid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Admin)) {
            return false;
        }
        Admin other = (Admin) object;
        if ((this.userid == null && other.userid != null) || (this.userid != null && !this.userid.equals(other.userid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.kel1.entity.Admin[ userid=" + userid + " ]";
    }
    
}

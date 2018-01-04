/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.bean;

//<<<<<<< HEAD
/**
 *
 * @author user
 */
//public class AdminBean {
//    private String username;
//=======
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author user
 */
public class AdminBean {
    @NotEmpty(message = "Insert Your Username")
    private String username;
    @NotEmpty(message = "Insert Your Username")
//>>>>>>> origin/master
    private String password;

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.dao;

import com.kel1.bean.CustomerBean;
import com.kel1.entity.Admin;
import com.kel1.entity.Customer;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author user
 */
@Repository
@Transactional
public class UserService {

    static final Logger logger = Logger.getLogger(UserService.class.getName());

    @PersistenceUnit
    EntityManagerFactory emf;

    private EntityManager em;

    public Admin findByUsername(String username) {
        Admin admin = new Admin();
        try {
            setEm(emf.createEntityManager());
            Query query = getEm().createQuery("select a from Admin a where a.username = :username");
            query.setParameter("username", username);
            admin = (Admin) query.getSingleResult();
        } catch (NoResultException nre) {
            logger.severe("Username Tidak Ada");
        }
        return admin;
    }

    public List<Customer> showAllCustomer() {
        em = emf.createEntityManager();
        Query query = em.createNamedQuery("Customer.findAll");
        List<Customer> cust = query.getResultList();
        return cust;
    }

    public Customer findById(Integer id) {
        em = emf.createEntityManager();
        Query query = em.createNamedQuery("Customer.findByCustomerId");
        query.setParameter("customerId", id);
        Customer cust = (Customer) query.getSingleResult();
        return em.find(Customer.class, id);
    }

    public List<Customer> showExistCustomer() {

        em = emf.createEntityManager();
        Query query = em.createNamedQuery("Customer.findByCustomerFlag");
        query.setParameter("customerFlag", "y");
        List<Customer> credits = query.getResultList();
        return credits;
    }

    public void delCustomer(Customer cust) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.merge(cust);
        em.getTransaction().commit();
        em.close();
    }

    public void editCustomer(Customer cust) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.merge(cust);       
        em.getTransaction().commit();
        em.close();
    }
//    public UserService() {
//    }
//
//    public UserService(EntityManagerFactory emf, EntityManager em) {
//        this.emf = emf;
//        this.em = em;
//    }
//    
//      public List<Admin> findAll(){
//        List<Admin> adm;
//        adm = this.em.createNamedQuery("Admin.findAll").getResultList();
//        return adm;
//    }
//    
//    public Admin findByUsername(String username) {
//        Admin user = new Admin();
//        try {
//            em = emf.createEntityManager();
//            Query query = em.createNamedQuery("Admin.findByUsername");
//            query.setParameter("username", username);
//            user = (Admin) query.getSingleResult();
//        } catch (NoResultException nre) {
//            java.util.logging.Logger.getLogger(username).log(Level.SEVERE, username, nre);
//        }
//        return user;
//    }
//    

    /**
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }
}

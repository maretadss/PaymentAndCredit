/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.payment.dao;

import com.payment.model.Customer;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author user
 */
@Repository
@Transactional
public class CustomerDAO {

    
    
    static final Logger logger = Logger.getLogger(CustomerDAO.class.getName());
    
    @PersistenceUnit
    EntityManagerFactory emf;
    private EntityManager em;
    
    @Transactional
    public void saveCustomer(Customer customer){
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(customer);
        em.getTransaction().commit();
        em.close();
    }
    
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

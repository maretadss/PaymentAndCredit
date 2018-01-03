/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.dao;

import com.kel1.entity.Credit;
import java.util.List;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
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
public class CreditDAO {
    static final Logger logger = Logger.getLogger(CreditDAO.class.getName());
    
    @PersistenceUnit
    EntityManagerFactory emf;
    
    private EntityManager em;
    
    public Credit findCreditById(Integer id){
        em = emf.createEntityManager();
        Query query = em.createNamedQuery("Credit.findByCreditId");
        query.setParameter("creditId", id);
        Credit credit = (Credit) query.getSingleResult();
        return credit;
    }
    
    public void editCredit(Credit credit){
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.merge(credit);
        em.getTransaction().commit();
        em.close();
    }
    
    public void saveCredit(Credit credit){
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(credit);
        em.getTransaction().commit();
        em.close();
    }
    
    public List<Credit> showCreditApproved(){
        em = emf.createEntityManager();
        Query query = em.createNamedQuery("Credit.findByCreditStatusAndFlag");
        query.setParameter("creditFlag", "y");
        query.setParameter("creditStatus", "approved");
        List<Credit> credits = query.getResultList();
        return credits;
    }

     public List<Credit> showCreditUnpproved(){
        em = emf.createEntityManager();
        Query query = em.createNamedQuery("Credit.findByCreditStatusAndFlag");
        query.setParameter("creditFlag", "y");
        query.setParameter("creditStatus", "unapproved");
        List<Credit> credits = query.getResultList();
        return credits;
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

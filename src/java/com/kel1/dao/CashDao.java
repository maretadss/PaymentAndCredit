/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.dao;

import com.kel1.entity.Cash;
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
public class CashDao {

    static final Logger logger = Logger.getLogger(CashDao.class.getName());

    @PersistenceUnit
    EntityManagerFactory emf;

    private EntityManager em;
    
    public List<Cash> showCashPayment() {
        setEm(emf.createEntityManager());
        Query query = getEm().createNamedQuery("Cash.findAll");
        List<Cash> cust = query.getResultList();
        return cust;
    }

    public Cash findCashById(Integer id) {
        setEm(emf.createEntityManager());
        Query query = getEm().createNamedQuery("Cash.findByCashId");
        query.setParameter("cashId", id);
        Cash cust = (Cash) query.getSingleResult();
        return getEm().find(Cash.class, id);
    }

    public void delCash(Cash cust) {
        setEm(emf.createEntityManager());
        getEm().getTransaction().begin();
        getEm().merge(cust);
        getEm().getTransaction().commit();
        getEm().close();
    }

    public List<Cash> showExisCash() {
        setEm(emf.createEntityManager());
        Query query = getEm().createNamedQuery("Cash.findByCashFlag");
        query.setParameter("cashFlag", "y");
        List<Cash> cash = query.getResultList();
        return cash;
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

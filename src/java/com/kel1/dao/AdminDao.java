/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.dao;

import com.kel1.entity.Admin;
import java.util.List;
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
public class AdminDao {
    
//<<<<<<< HEAD
//    static final Logger logger = Logger.getLogger(UserService.class.getName());
//
//    @PersistenceUnit
//    EntityManagerFactory emf;
//
//    private EntityManager em;
//    
//    public Admin findByUsername(String username) {
//        Admin admin = new Admin();
//        try {
//            setEm(emf.createEntityManager());
//            Query query = getEm().createQuery("select a from Admin a where a.username = :username");
//            query.setParameter("username", username);
//            admin = (Admin) query.getSingleResult();
//        } catch (NoResultException nre) {
//            logger.severe("Username Tidak Ada");
//        }
//        return admin;
//    }
//    
//    public List<Admin> showAllAdmin() {
//        setEm(emf.createEntityManager());
//        Query query = getEm().createNamedQuery("Admin.findAll");
//        List<Admin> admin = query.getResultList();
//        return admin;
//    }
//    
//    public Admin findById(Integer id) {
//        setEm(emf.createEntityManager());
//        Query query = getEm().createNamedQuery("Admin.findByUserid");
//        query.setParameter("userId", id);
//        Admin admin = (Admin) query.getSingleResult();
//        return getEm().find(Admin.class, id);
//    }
//    
//    public List<Admin> showExistAdmin() {
//        setEm(emf.createEntityManager());
//        Query query = getEm().createNamedQuery("Admin.findByAdminFlag");
//        query.setParameter("userId", "y");
//=======
    static final Logger logger = Logger.getLogger(CustomerDao.class.getName());

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
    
    public List<Admin> showAllAdmin() {
        setEm(emf.createEntityManager());
        Query query = getEm().createNamedQuery("Admin.findAll");
        List<Admin> admin = query.getResultList();
        return admin;
    }
    
    public Admin findById(Integer id) {
        setEm(emf.createEntityManager());
        Query query = getEm().createNamedQuery("Admin.findByUserid");
        query.setParameter("userid", id);
        Admin admin = (Admin) query.getSingleResult();
        return admin;
    }
    
    public List<Admin> showExistAdmin() {
        setEm(emf.createEntityManager());
        Query query = getEm().createNamedQuery("Admin.findByAdminFlag");
        query.setParameter("adminFlag", "y");
//>>>>>>> origin/master
        List<Admin> admin = query.getResultList();
        return admin;
    }
    
    public void addAdmin(Admin admin) {
        setEm(emf.createEntityManager());
        getEm().getTransaction().begin();
        getEm().persist(admin);       
        getEm().getTransaction().commit();
        getEm().close();
    }
    
    public void editAdmin(Admin admin) {
        setEm(emf.createEntityManager());
        getEm().getTransaction().begin();
        getEm().merge(admin);       
        getEm().getTransaction().commit();
        getEm().close();
    }
    
    public void delAdmin(Admin admin) {
        setEm(emf.createEntityManager());
        getEm().getTransaction().begin();
        getEm().merge(admin);
        getEm().getTransaction().commit();
        getEm().close();
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

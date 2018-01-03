/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.kel1.bean;

/**
 *
 * @author user
 */
public class SimulasiBean {
     
    private double hargaBarang;
    private double bungaTahunan;
    private int durasi;
    private double uangMuka;
    private double gajiPokok;
    private double bonus;
    private double pendapatanLain;
    private int tanggungan;

     public double pokokCicilan(){
        return getHargaBarang()-getUangMuka();
    }
    
    public double bungaCicilan(){
        return pokokCicilan()*getBungaTahunan()*getDurasi()/12;
    }
    
    public  double totalKredit(){
        return pokokCicilan()+bungaCicilan();
    }
    
    public double cicilanPerbulan(){
        return totalKredit()/getDurasi();
    }
    
    public double penghasilanPerbulan(){
        return getGajiPokok()+getPendapatanLain()+getBonus();
    }
    
    public double limit(){
        return penghasilanPerbulan()/getTanggungan()+1;
   }
    
    public boolean isSetuju(){
        return limit()>cicilanPerbulan();
    }

    public SimulasiBean() {
    }

    public SimulasiBean(double hargaBarang, double bungaTahunan, int durasi, double uangMuka, double gajiPokok, double bonus, double pendapatanLain, int tanggungan) {
        this.hargaBarang = hargaBarang;
        this.bungaTahunan = bungaTahunan;
        this.durasi = durasi;
        this.uangMuka = uangMuka;
        this.gajiPokok = gajiPokok;
        this.bonus = bonus;
        this.pendapatanLain = pendapatanLain;
        this.tanggungan = tanggungan;
    }

    
    
    /**
     * @return the hargaBarang
     */
    public double getHargaBarang() {
        return hargaBarang;
    }

    /**
     * @param hargaBarang the hargaBarang to set
     */
    public void setHargaBarang(double hargaBarang) {
        this.hargaBarang = hargaBarang;
    }

    /**
     * @return the bungaTahunan
     */
    public double getBungaTahunan() {
        return bungaTahunan;
    }

    /**
     * @param bungaTahunan the bungaTahunan to set
     */
    public void setBungaTahunan(double bungaTahunan) {
        this.bungaTahunan = bungaTahunan;
    }

    /**
     * @return the durasi
     */
    public int getDurasi() {
        return durasi;
    }

    /**
     * @param durasi the durasi to set
     */
    public void setDurasi(int durasi) {
        this.durasi = durasi;
    }

    /**
     * @return the uangMuka
     */
    public double getUangMuka() {
        return uangMuka;
    }

    /**
     * @param uangMuka the uangMuka to set
     */
    public void setUangMuka(double uangMuka) {
        this.uangMuka = uangMuka;
    }

    /**
     * @return the gajiPokok
     */
    public double getGajiPokok() {
        return gajiPokok;
    }

    /**
     * @param gajiPokok the gajiPokok to set
     */
    public void setGajiPokok(double gajiPokok) {
        this.gajiPokok = gajiPokok;
    }

    /**
     * @return the bonus
     */
    public double getBonus() {
        return bonus;
    }

    /**
     * @param bonus the bonus to set
     */
    public void setBonus(double bonus) {
        this.bonus = bonus;
    }

    /**
     * @return the pendapatanLain
     */
    public double getPendapatanLain() {
        return pendapatanLain;
    }

    /**
     * @param pendapatanLain the pendapatanLain to set
     */
    public void setPendapatanLain(double pendapatanLain) {
        this.pendapatanLain = pendapatanLain;
    }

    /**
     * @return the tanggungan
     */
    public int getTanggungan() {
        return tanggungan;
    }

    /**
     * @param tanggungan the tanggungan to set
     */
    public void setTanggungan(int tanggungan) {
        this.tanggungan = tanggungan;
    }
}

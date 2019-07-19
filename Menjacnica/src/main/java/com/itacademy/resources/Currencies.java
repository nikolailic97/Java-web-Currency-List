package com.itacademy.resources;

import java.time.LocalDateTime;

public class Currencies {
    private LocalDateTime vreme;
    
    private double eur; // evro
    private double rsd; // dinar
    private double usd; // americki dolar
    private double aud; // australijski dolar
    private double bam; // bih konvertabilna marka
    private double gbp; // britanska funta
    private double hrk; // hrvatska kuna
    private double jpy; // japanski jen
    private double cad; // kanadski dolar
    private double rub; // rublja
    private double chf; // svajcarski franak
    private double czk; // ceska kruna
    private double huf; // madjarska forinta

    public Currencies(double eur, double rsd, double usd, double aud, double bam, double gbp, double hrk, double jpy, double cad, double rub, double chf, double czk, double huf) {
        this.vreme = LocalDateTime.now();
        
        this.eur = eur;
        this.rsd = rsd;
        this.usd = usd;
        this.aud = aud;
        this.bam = bam;
        this.gbp = gbp;
        this.hrk = hrk;
        this.jpy = jpy;
        this.cad = cad;
        this.rub = rub;
        this.chf = chf;
        this.czk = czk;
        this.huf = huf;
    }
    
    public Currencies() {} // prazan konstruktor 

    public double getRsd() {
        return rsd;
    }

    public void setRsd(double rsd) {
        this.rsd = rsd;
    }

    public double getUsd() {
        return usd;
    }

    public void setUsd(double usd) {
        this.usd = usd;
    }

    public double getAud() {
        return aud;
    }

    public void setAud(double aud) {
        this.aud = aud;
    }

    public double getBam() {
        return bam;
    }

    public void setBam(double bam) {
        this.bam = bam;
    }

    public double getGbp() {
        return gbp;
    }

    public void setGbp(double gbp) {
        this.gbp = gbp;
    }

    public double getHrk() {
        return hrk;
    }

    public void setHrk(double hrk) {
        this.hrk = hrk;
    }

    public double getJpy() {
        return jpy;
    }

    public void setJpy(double jpy) {
        this.jpy = jpy;
    }

    public double getCad() {
        return cad;
    }

    public void setCad(double cad) {
        this.cad = cad;
    }

    public double getRub() {
        return rub;
    }

    public void setRub(double rub) {
        this.rub = rub;
    }

    public double getChf() {
        return chf;
    }

    public void setChf(double chf) {
        this.chf = chf;
    }

    public double getCzk() {
        return czk;
    }

    public void setCzk(double czk) {
        this.czk = czk;
    }

    public double getHuf() {
        return huf;
    }

    public void setHuf(double huf) {
        this.huf = huf;
    }

    public LocalDateTime getVreme() {
        return vreme;
    }
      
}

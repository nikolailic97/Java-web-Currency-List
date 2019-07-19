package com.itacademy.tasks;

import com.google.gson.Gson;
import com.google.gson.internal.LinkedTreeMap;
import com.itacademy.resources.Currencies;
import java.util.ArrayList;
import java.util.Map;
import java.util.TimerTask;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;


public class FixersTask extends TimerTask{
    private OkHttpClient okhttp;
    private  String apiKey;
    private String apiSymbols;
    private ArrayList<Currencies> currLst;
    // valute
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
    // ***
    public FixersTask(ArrayList<Currencies> currLst) {
        this.currLst = currLst;
        okhttp = new OkHttpClient();      
    }

    public double getEur() {
        return eur;
    }

    public void setEur(double eur) {
        this.eur = eur;
    }
    
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
    
    
    
    @Override
    public void run() {
        apiKey = "86f4731130608ec397ca0b55d2db98b0";
        apiSymbols = "RSD,USD,AUD,BAM,GPB,HRK,JPY,CAD,RUB,CHF,CZK,HUF";
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder() 
                .url("http://data.fixer.io/api/latest?access_key=86f4731130608ec397ca0b55d2db98b0")
                .build();
        
        try (Response response = okhttp.newCall(request).execute()){;
            Gson gson = new Gson();
            Map map = gson.fromJson(response.body().string(), Map.class);
            LinkedTreeMap ltm = (LinkedTreeMap)map.get("rates");
            
            // preuzimanje valuta   
            eur = (double) ltm.get("EUR");
            rsd = (double) ltm.get("RSD");
            usd = (double) ltm.get("USD");
            aud = (double) ltm.get("AUD");
            bam = (double) ltm.get("BAM");
            gbp = (double) ltm.get("GBP");
            hrk = (double) ltm.get("HRK");
            jpy = (double) ltm.get("JPY");
            cad = (double) ltm.get("CAD");
            rub = (double) ltm.get("RUB");
            chf = (double) ltm.get("CHF");
            czk = (double) ltm.get("CZK");
            huf = (double) ltm.get("HUF");
            
            // definisanje valuta
            Currencies cr = new Currencies(eur,rsd,usd,aud,bam,gbp,hrk,jpy,cad,rub,chf,czk,huf);
            currLst.add(cr);
            //System.out.println(cr);
        }catch(Exception ex) {
            ex.printStackTrace();
        }
    }
    
}

package com.itacademy;


import com.google.gson.Gson;
import com.itacademy.resources.Agregator;
import com.itacademy.tasks.ClearTask;
import com.itacademy.tasks.FixersTask;
import freemarker.template.Configuration;
import java.io.File;
import java.net.URL;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.Timer;
import org.apache.log4j.BasicConfigurator;
import spark.ModelAndView;
import static spark.Spark.*;
import spark.template.freemarker.FreeMarkerEngine;


public class Application {
      
    public static void main(String[] args) {       
        BasicConfigurator.configure();
        staticFileLocation("/public");
        staticFiles.location("/public");
        //Freemarker podesavanja
        FreeMarkerEngine freemarker = new FreeMarkerEngine();
            Configuration config = new Configuration();
            config.setDefaultEncoding("UTF-8");
            URL putanja = Application.class.getResource("/templates");
            try{
            config.setDirectoryForTemplateLoading(
                    new File(putanja.getPath())
            );
            } catch(Exception ex) { System.out.println(ex); }
            freemarker.setConfiguration(config);
        
         // test za proveru rada api-a
        Agregator agregator = new Agregator();
               
        Timer t = new Timer();
        FixersTask fst = new FixersTask(agregator.getCurrLst());
        ClearTask ct = new ClearTask(agregator);
        
        t.schedule(fst, 0, 15000);
        t.schedule(ct, 0, 300000); // vreme kada ce se odraditi clearTask
            
        // Spark podesavanja
        port(5000);         
        get("/menjacnica", (request, response) -> {          
          Gson gson = new Gson();
          HashMap<String, Object> data = new HashMap<>();  
            // *** Srednji kurs
            double usd = fst.getUsd();
            double aud = fst.getAud();
            double bam = fst.getBam();
            double gbp = fst.getGbp();
            double hrk = fst.getHrk();
            double jpy = fst.getJpy();
            double cad = fst.getCad();
            double huf = fst.getHuf();
            double rub = fst.getRub();
            double rsd = fst.getRsd();
            double czk = fst.getCzk();
            double chf = fst.getChf();
            double eur = fst.getEur();
            
            data.put("currEur", eur);
            data.put("currUsd", usd);
            data.put("currAud", aud);
            data.put("currBam", bam);
            data.put("currGbp", gbp);
            data.put("currHrk", hrk);
            data.put("currJpy", jpy);
            data.put("currCad", cad);
            data.put("currHuf", huf);
            data.put("currRub", rub);
            data.put("currRsd", rsd);
            data.put("currCzk", czk);
            data.put("currChf", chf);
            // Kraj Srednjeg kursa ***
            
            //*** Kupovni kurs
            double usdK = fst.getUsd() - 0.1 ;
            double audK = fst.getAud() - 0.12 ;
            double bamK = fst.getBam() - 0.2 ;
            double gbpK = fst.getGbp() - 0.07 ;
            double hrkK = fst.getHrk() - 0.9 ;
            double jpyK = fst.getJpy() - 2.2 ;
            double cadK = fst.getCad() - 0.18 ;
            double hufK = fst.getHuf() - 8 ;
            double rubK = fst.getRub() - 1.12 ;
            double rsdK = fst.getRsd() - 2 ;
            double czkK = fst.getCzk() - 0.89;
            double chfK = fst.getChf() - 0.04 ;
            
            data.put("currUsdK", usdK);
            data.put("currAudK", audK);
            data.put("currBamK", bamK);
            data.put("currGbpK", gbpK);
            data.put("currHrkK", hrkK);
            data.put("currJpyK", jpyK);
            data.put("currCadK", cadK);
            data.put("currHufK", hufK);
            data.put("currRubK", rubK);
            data.put("currRsdK", rsdK);
            data.put("currCzkK", czkK);
            data.put("currChfK", chfK);         
            // Kraj Kupovnog kursa ***
            
            //*** Prodajni Kurs
            double usdP = fst.getUsd() + 0.2 ;
            double audP = fst.getAud() + 0.12 ;
            double bamP = fst.getBam() + 0.2 ;
            double gbpP = fst.getGbp() + 0.07 ;
            double hrkP = fst.getHrk() + 0.9 ;
            double jpyP = fst.getJpy() + 2.2 ;
            double cadP = fst.getCad() + 0.18 ;
            double hufP = fst.getHuf() + 8 ;
            double rubP = fst.getRub() + 1.12 ;
            double rsdP = fst.getRsd() + 2 ;
            double czkP = fst.getCzk() + 0.89;
            double chfP = fst.getChf() + 0.04 ;
            
            data.put("currUsdP", usdP);
            data.put("currAudP", audP);
            data.put("currBamP", bamP);
            data.put("currGbpP", gbpP);
            data.put("currHrkP", hrkP);
            data.put("currJpyP", jpyP);
            data.put("currCadP", cadP);
            data.put("currHufP", hufP);
            data.put("currRubP", rubP);
            data.put("currRsdP", rsdP);
            data.put("currCzkP", czkP);
            data.put("currChfP", chfP);
            // Kraj Prodajnog Kursa ***
            
            // *** trenutni datum
            LocalDate datum = LocalDate.now();
            data.put("datum", datum);
            // Kraj trenutni datum ***
            
            // azuriranje vreme
            DateTimeFormatter dtf =
                    DateTimeFormatter.ofPattern("HH:mm:ss");
            LocalDateTime vreme = LocalDateTime.now();
            data.put("vreme", dtf.format(vreme));

            return new ModelAndView(data, "home.ftl");
        }, freemarker);

    }

}

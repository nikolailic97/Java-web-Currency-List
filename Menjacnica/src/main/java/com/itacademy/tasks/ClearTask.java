package com.itacademy.tasks;

import com.itacademy.resources.Agregator;
import com.itacademy.resources.Currencies;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.TimerTask;

public class ClearTask extends TimerTask{
    private Agregator agregator;
    
    public ClearTask(Agregator agregator) {
        this.agregator = agregator;
    }
    
    @Override
    public void run() {
        for(Currencies curr : agregator.getCurrLst()) {
            if( ChronoUnit.MINUTES.between(curr.getVreme(),
                    LocalDateTime.now()) > 1) { // promena vremena ciscenja liste
                agregator.getCurrLst().remove(curr);
            }
                
        }
    }
    
}

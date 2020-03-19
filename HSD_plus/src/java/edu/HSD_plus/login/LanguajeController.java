/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.login;

import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import javax.annotation.PostConstruct;

/**
 *
 * @author SAM
 */
@Named(value = "languajeController")
@SessionScoped
public class LanguajeController implements Serializable {
    
    private String lang;    
    private Locale locale;
    
    private List<Locale> locales;

    /**
     * Creates a new instance of LanguajeController
     */
    
    public LanguajeController() {
    }
    
    
    @PostConstruct
    public void init(){
        locales = new ArrayList<>();
        locales.add(new Locale("es"));
        locales.add(new Locale("en"));
    } 

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
        locale = new Locale(lang);
    }

    public Locale getLocale() {
        return locale;
    }

    public void setLocale(Locale locale) {
        this.locale = locale;
    }

    public List<Locale> getLocales() {
        return locales;
    }
    
    
}

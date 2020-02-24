/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.util;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;



/**
 *
 * @author SAM
 */
public class MessageUtil {
    public static void sendMessage(String clientId, String message, String detail, FacesMessage.Severity severity, Boolean prop){
        FacesMessage fm = new FacesMessage(severity, message , detail);
        FacesContext.getCurrentInstance().addMessage(clientId, fm);
    }
    public static void sendInfo(String clientId, String message, String detail, Boolean prop){
        sendMessage(clientId, message, detail, FacesMessage.SEVERITY_INFO , prop);
    }
    public static void sendError(String clientId, String message, String detail, Boolean prop){
        sendMessage(clientId, message, detail, FacesMessage.SEVERITY_ERROR , prop);
    }
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.LogAuth;
import java.util.Date;

privileged aspect LogAuth_Roo_JavaBean {
    
    public Date LogAuth.getActionDate() {
        return this.actionDate;
    }
    
    public void LogAuth.setActionDate(Date actionDate) {
        this.actionDate = actionDate;
    }
    
    public String LogAuth.getUserId() {
        return this.userId;
    }
    
    public void LogAuth.setUserId(String userId) {
        this.userId = userId;
    }
    
    public String LogAuth.getIp() {
        return this.ip;
    }
    
    public void LogAuth.setIp(String ip) {
        this.ip = ip;
    }
    
    public String LogAuth.getAction() {
        return this.action;
    }
    
    public void LogAuth.setAction(String action) {
        this.action = action;
    }
    
}

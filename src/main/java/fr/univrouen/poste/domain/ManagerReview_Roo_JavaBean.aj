// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.ManagerReview;
import fr.univrouen.poste.domain.User;
import java.util.Date;

privileged aspect ManagerReview_Roo_JavaBean {
    
    public User ManagerReview.getManager() {
        return this.manager;
    }
    
    public void ManagerReview.setManager(User manager) {
        this.manager = manager;
    }
    
    public Date ManagerReview.getReviewDate() {
        return this.reviewDate;
    }
    
    public void ManagerReview.setReviewDate(Date reviewDate) {
        this.reviewDate = reviewDate;
    }
    
}
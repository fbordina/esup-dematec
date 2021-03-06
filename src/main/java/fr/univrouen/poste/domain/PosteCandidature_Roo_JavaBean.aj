// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.ManagerReview;
import fr.univrouen.poste.domain.MemberReviewFile;
import fr.univrouen.poste.domain.PosteAPourvoir;
import fr.univrouen.poste.domain.PosteCandidature;
import fr.univrouen.poste.domain.PosteCandidatureFile;
import fr.univrouen.poste.domain.User;
import java.util.Date;
import java.util.Set;

privileged aspect PosteCandidature_Roo_JavaBean {
    
    public Date PosteCandidature.getCreation() {
        return this.creation;
    }
    
    public void PosteCandidature.setCreation(Date creation) {
        this.creation = creation;
    }
    
    public Date PosteCandidature.getModification() {
        return this.modification;
    }
    
    public PosteAPourvoir PosteCandidature.getPoste() {
        return this.poste;
    }
    
    public void PosteCandidature.setPoste(PosteAPourvoir poste) {
        this.poste = poste;
    }
    
    public Set<PosteCandidatureFile> PosteCandidature.getCandidatureFiles() {
        return this.candidatureFiles;
    }
    
    public void PosteCandidature.setCandidatureFiles(Set<PosteCandidatureFile> candidatureFiles) {
        this.candidatureFiles = candidatureFiles;
    }
    
    public Set<MemberReviewFile> PosteCandidature.getMemberReviewFiles() {
        return this.memberReviewFiles;
    }
    
    public void PosteCandidature.setMemberReviewFiles(Set<MemberReviewFile> memberReviewFiles) {
        this.memberReviewFiles = memberReviewFiles;
    }
    
    public User PosteCandidature.getCandidat() {
        return this.candidat;
    }
    
    public void PosteCandidature.setCandidat(User candidat) {
        this.candidat = candidat;
    }
    
    public Boolean PosteCandidature.getRecevable() {
        return this.recevable;
    }
    
    public void PosteCandidature.setRecevable(Boolean recevable) {
        this.recevable = recevable;
    }
    
    public Boolean PosteCandidature.getAuditionnable() {
        return this.auditionnable;
    }
    
    public void PosteCandidature.setAuditionnable(Boolean auditionnable) {
        this.auditionnable = auditionnable;
    }
    
    public ManagerReview PosteCandidature.getManagerReview() {
        return this.managerReview;
    }
    
    public void PosteCandidature.setManagerReview(ManagerReview managerReview) {
        this.managerReview = managerReview;
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.BigFile;
import fr.univrouen.poste.domain.PosteCandidatureFile;
import java.util.Date;
import org.springframework.web.multipart.MultipartFile;

privileged aspect PosteCandidatureFile_Roo_JavaBean {
    
    public String PosteCandidatureFile.getFilename() {
        return this.filename;
    }
    
    public void PosteCandidatureFile.setFilename(String filename) {
        this.filename = filename;
    }
    
    public MultipartFile PosteCandidatureFile.getFile() {
        return this.file;
    }
    
    public void PosteCandidatureFile.setFile(MultipartFile file) {
        this.file = file;
    }
    
    public Date PosteCandidatureFile.getSendTime() {
        return this.sendTime;
    }
    
    public void PosteCandidatureFile.setSendTime(Date sendTime) {
        this.sendTime = sendTime;
    }
    
    public Long PosteCandidatureFile.getFileSize() {
        return this.fileSize;
    }
    
    public void PosteCandidatureFile.setFileSize(Long fileSize) {
        this.fileSize = fileSize;
    }
    
    public String PosteCandidatureFile.getContentType() {
        return this.contentType;
    }
    
    public void PosteCandidatureFile.setContentType(String contentType) {
        this.contentType = contentType;
    }
    
    public BigFile PosteCandidatureFile.getBigFile() {
        return this.bigFile;
    }
    
    public void PosteCandidatureFile.setBigFile(BigFile bigFile) {
        this.bigFile = bigFile;
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.LogAuth;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect LogAuth_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager LogAuth.entityManager;
    
    public static final List<String> LogAuth.fieldNames4OrderClauseFilter = java.util.Arrays.asList("actionDate", "userId", "ip", "action");
    
    public static final EntityManager LogAuth.entityManager() {
        EntityManager em = new LogAuth().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long LogAuth.countLogAuths() {
        return entityManager().createQuery("SELECT COUNT(o) FROM LogAuth o", Long.class).getSingleResult();
    }
    
    public static List<LogAuth> LogAuth.findAllLogAuths() {
        return entityManager().createQuery("SELECT o FROM LogAuth o", LogAuth.class).getResultList();
    }
    
    public static List<LogAuth> LogAuth.findAllLogAuths(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LogAuth o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LogAuth.class).getResultList();
    }
    
    public static LogAuth LogAuth.findLogAuth(Long id) {
        if (id == null) return null;
        return entityManager().find(LogAuth.class, id);
    }
    
    public static List<LogAuth> LogAuth.findLogAuthEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM LogAuth o", LogAuth.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<LogAuth> LogAuth.findLogAuthEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM LogAuth o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, LogAuth.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void LogAuth.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void LogAuth.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            LogAuth attached = LogAuth.findLogAuth(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void LogAuth.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void LogAuth.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public LogAuth LogAuth.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        LogAuth merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

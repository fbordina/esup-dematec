// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.CommissionEntry;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CommissionEntry_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager CommissionEntry.entityManager;
    
    public static final List<String> CommissionEntry.fieldNames4OrderClauseFilter = java.util.Arrays.asList("numPoste", "email", "nom", "prenom", "membre", "poste");
    
    public static final EntityManager CommissionEntry.entityManager() {
        EntityManager em = new CommissionEntry().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CommissionEntry.countCommissionEntrys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CommissionEntry o", Long.class).getSingleResult();
    }
    
    public static List<CommissionEntry> CommissionEntry.findAllCommissionEntrys(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CommissionEntry o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CommissionEntry.class).getResultList();
    }
    
    public static CommissionEntry CommissionEntry.findCommissionEntry(Long id) {
        if (id == null) return null;
        return entityManager().find(CommissionEntry.class, id);
    }
    
    public static List<CommissionEntry> CommissionEntry.findCommissionEntryEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM CommissionEntry o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, CommissionEntry.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void CommissionEntry.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CommissionEntry.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CommissionEntry attached = CommissionEntry.findCommissionEntry(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CommissionEntry.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CommissionEntry.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CommissionEntry CommissionEntry.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CommissionEntry merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

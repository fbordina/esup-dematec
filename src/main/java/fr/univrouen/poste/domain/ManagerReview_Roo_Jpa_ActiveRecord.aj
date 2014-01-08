// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.ManagerReview;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ManagerReview_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager ManagerReview.entityManager;
    
    public static final List<String> ManagerReview.fieldNames4OrderClauseFilter = java.util.Arrays.asList("manager", "reviewDate");
    
    public static final EntityManager ManagerReview.entityManager() {
        EntityManager em = new ManagerReview().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long ManagerReview.countManagerReviews() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ManagerReview o", Long.class).getSingleResult();
    }
    
    public static List<ManagerReview> ManagerReview.findAllManagerReviews() {
        return entityManager().createQuery("SELECT o FROM ManagerReview o", ManagerReview.class).getResultList();
    }
    
    public static List<ManagerReview> ManagerReview.findAllManagerReviews(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ManagerReview o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ManagerReview.class).getResultList();
    }
    
    public static ManagerReview ManagerReview.findManagerReview(Long id) {
        if (id == null) return null;
        return entityManager().find(ManagerReview.class, id);
    }
    
    public static List<ManagerReview> ManagerReview.findManagerReviewEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ManagerReview o", ManagerReview.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<ManagerReview> ManagerReview.findManagerReviewEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM ManagerReview o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, ManagerReview.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void ManagerReview.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void ManagerReview.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            ManagerReview attached = ManagerReview.findManagerReview(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void ManagerReview.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void ManagerReview.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public ManagerReview ManagerReview.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ManagerReview merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}

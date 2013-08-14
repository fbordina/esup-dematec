// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.domain;

import fr.univrouen.poste.domain.User;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect User_Roo_Finder {
    
    public static Long User.countFindUsersByActivationKeyAndEmailAddress(String activationKey, String emailAddress) {
        if (activationKey == null || activationKey.length() == 0) throw new IllegalArgumentException("The activationKey argument is required");
        if (emailAddress == null || emailAddress.length() == 0) throw new IllegalArgumentException("The emailAddress argument is required");
        EntityManager em = User.entityManager();
        TypedQuery q = em.createQuery("SELECT count(o) FROM User AS o WHERE o.activationKey = :activationKey AND o.emailAddress = :emailAddress", Long.class);
        q.setParameter("activationKey", activationKey);
        q.setParameter("emailAddress", emailAddress);
        return ((Long) q.getSingleResult());
    }
    
    public static Long User.countFindUsersByEmailAddress(String emailAddress) {
        if (emailAddress == null || emailAddress.length() == 0) throw new IllegalArgumentException("The emailAddress argument is required");
        EntityManager em = User.entityManager();
        TypedQuery q = em.createQuery("SELECT count(o) FROM User AS o WHERE o.emailAddress = :emailAddress", Long.class);
        q.setParameter("emailAddress", emailAddress);
        return ((Long) q.getSingleResult());
    }
    
    public static Long User.countFindUsersByIsAdmin(Boolean isAdmin) {
        if (isAdmin == null) throw new IllegalArgumentException("The isAdmin argument is required");
        EntityManager em = User.entityManager();
        TypedQuery q = em.createQuery("SELECT count(o) FROM User AS o WHERE o.isAdmin = :isAdmin", Long.class);
        q.setParameter("isAdmin", isAdmin);
        return ((Long) q.getSingleResult());
    }
    
    public static Long User.countFindUsersByIsManager(Boolean isManager) {
        if (isManager == null) throw new IllegalArgumentException("The isManager argument is required");
        EntityManager em = User.entityManager();
        TypedQuery q = em.createQuery("SELECT count(o) FROM User AS o WHERE o.isManager = :isManager", Long.class);
        q.setParameter("isManager", isManager);
        return ((Long) q.getSingleResult());
    }
    
    public static Long User.countFindUsersByIsSuperManager(Boolean isSuperManager) {
        if (isSuperManager == null) throw new IllegalArgumentException("The isSuperManager argument is required");
        EntityManager em = User.entityManager();
        TypedQuery q = em.createQuery("SELECT count(o) FROM User AS o WHERE o.isSuperManager = :isSuperManager", Long.class);
        q.setParameter("isSuperManager", isSuperManager);
        return ((Long) q.getSingleResult());
    }
    
    public static Long User.countFindUsersByNumCandidat(String numCandidat) {
        if (numCandidat == null || numCandidat.length() == 0) throw new IllegalArgumentException("The numCandidat argument is required");
        EntityManager em = User.entityManager();
        TypedQuery q = em.createQuery("SELECT count(o) FROM User AS o WHERE o.numCandidat = :numCandidat", Long.class);
        q.setParameter("numCandidat", numCandidat);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<User> User.findUsersByActivationKeyAndEmailAddress(String activationKey, String emailAddress) {
        if (activationKey == null || activationKey.length() == 0) throw new IllegalArgumentException("The activationKey argument is required");
        if (emailAddress == null || emailAddress.length() == 0) throw new IllegalArgumentException("The emailAddress argument is required");
        EntityManager em = User.entityManager();
        TypedQuery<User> q = em.createQuery("SELECT o FROM User AS o WHERE o.activationKey = :activationKey AND o.emailAddress = :emailAddress", User.class);
        q.setParameter("activationKey", activationKey);
        q.setParameter("emailAddress", emailAddress);
        return q;
    }
    
    public static TypedQuery<User> User.findUsersByEmailAddress(String emailAddress) {
        if (emailAddress == null || emailAddress.length() == 0) throw new IllegalArgumentException("The emailAddress argument is required");
        EntityManager em = User.entityManager();
        TypedQuery<User> q = em.createQuery("SELECT o FROM User AS o WHERE o.emailAddress = :emailAddress", User.class);
        q.setParameter("emailAddress", emailAddress);
        return q;
    }
    
    public static TypedQuery<User> User.findUsersByIsAdmin(Boolean isAdmin) {
        if (isAdmin == null) throw new IllegalArgumentException("The isAdmin argument is required");
        EntityManager em = User.entityManager();
        TypedQuery<User> q = em.createQuery("SELECT o FROM User AS o WHERE o.isAdmin = :isAdmin", User.class);
        q.setParameter("isAdmin", isAdmin);
        return q;
    }
    
    public static TypedQuery<User> User.findUsersByIsManager(Boolean isManager) {
        if (isManager == null) throw new IllegalArgumentException("The isManager argument is required");
        EntityManager em = User.entityManager();
        TypedQuery<User> q = em.createQuery("SELECT o FROM User AS o WHERE o.isManager = :isManager", User.class);
        q.setParameter("isManager", isManager);
        return q;
    }
    
    public static TypedQuery<User> User.findUsersByIsSuperManager(Boolean isSuperManager) {
        if (isSuperManager == null) throw new IllegalArgumentException("The isSuperManager argument is required");
        EntityManager em = User.entityManager();
        TypedQuery<User> q = em.createQuery("SELECT o FROM User AS o WHERE o.isSuperManager = :isSuperManager", User.class);
        q.setParameter("isSuperManager", isSuperManager);
        return q;
    }
    
    public static TypedQuery<User> User.findUsersByNumCandidat(String numCandidat) {
        if (numCandidat == null || numCandidat.length() == 0) throw new IllegalArgumentException("The numCandidat argument is required");
        EntityManager em = User.entityManager();
        TypedQuery<User> q = em.createQuery("SELECT o FROM User AS o WHERE o.numCandidat = :numCandidat", User.class);
        q.setParameter("numCandidat", numCandidat);
        return q;
    }
    
}

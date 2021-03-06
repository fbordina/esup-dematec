/**
 * Licensed to ESUP-Portail under one or more contributor license
 * agreements. See the NOTICE file distributed with this work for
 * additional information regarding copyright ownership.
 *
 * ESUP-Portail licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package fr.univrouen.poste.domain;
import java.util.List;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooToString(excludeFields = "membre,poste")
@RooJpaActiveRecord(finders = { "findCommissionEntrysByNumPosteAndEmail", "findCommissionEntrysByMembre" })
public class CommissionEntry {

    public static final List<String> fieldNames4OrderClauseFilter = java.util.Arrays.asList("numPoste", "email", "nom", "prenom", "membre", "poste", "numPoste,email");

    private String numPoste;

    private String email;

    private String nom;

    private String prenom;

    @ManyToOne
    private User membre;

    @ManyToOne
    private PosteAPourvoir poste;

    // don't care of upper/lower case for authentication with email ...
    public void setEmail(String email) {
        this.email = email.toLowerCase();
    }

    public Boolean getDeletable() {
        return membre == null && poste == null;
    }

    public static List<CommissionEntry> findAllCommissionEntrysWithMembreNull() {
        return entityManager().createQuery("SELECT o FROM CommissionEntry o WHERE o.membre is NULL", CommissionEntry.class).getResultList();
    }

    public static List<CommissionEntry> findAllCommissionEntrysWithPosteNull() {
        return entityManager().createQuery("SELECT o FROM CommissionEntry o WHERE o.poste is NULL", CommissionEntry.class).getResultList();
    }
}

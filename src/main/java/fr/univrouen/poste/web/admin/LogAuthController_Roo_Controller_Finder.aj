// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.web.admin;

import fr.univrouen.poste.web.admin.LogAuthController;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

privileged aspect LogAuthController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByActionEquals", "form" }, method = RequestMethod.GET)
    public String LogAuthController.findLogAuthsByActionEqualsForm(Model uiModel) {
        return "admin/logauths/findLogAuthsByActionEquals";
    }
    
}

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package fr.univrouen.poste.web.admin;

import fr.univrouen.poste.domain.LogMail;
import fr.univrouen.poste.web.admin.LogMailController;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

privileged aspect LogMailController_Roo_Controller_Finder {
    
    @RequestMapping(params = { "find=ByStatusEquals", "form" }, method = RequestMethod.GET)
    public String LogMailController.findLogMailsByStatusEqualsForm(Model uiModel) {
        return "admin/logmails/findLogMailsByStatusEquals";
    }
    
    @RequestMapping(params = "find=ByStatusEquals", method = RequestMethod.GET)
    public String LogMailController.findLogMailsByStatusEquals(@RequestParam("status") String status, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("logmails", LogMail.findLogMailsByStatusEquals(status).setFirstResult(firstResult).setMaxResults(sizeNo).getResultList());
            float nrOfPages = (float) LogMail.countFindLogMailsByStatusEquals(status) / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("logmails", LogMail.findLogMailsByStatusEquals(status).getResultList());
        }
        addDateTimeFormatPatterns(uiModel);
        return "admin/logmails/list";
    }
    
}

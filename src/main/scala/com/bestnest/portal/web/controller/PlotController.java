package com.bestnest.portal.web.controller;

import com.bestnest.portal.web.form.CityForm;
import com.bestnest.portal.web.form.ProjectForm;
import com.bestnest.portal.web.form.ProjectSearchForm;
import com.bestnest.service.ProjectSearchService;
import com.bestnest.util.Commercial;
import com.bestnest.util.Constant;
import com.bestnest.util.Residential;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by deokishore on 20/03/2016.
 */
@Controller
@RequestMapping("/plot-for-sale")
public class PlotController {

    private Logger LOGGER = Logger.getLogger(ProjectSearchController.class);

    @Autowired
    ProjectSearchService projectSearchService;

    @RequestMapping(method= RequestMethod.GET)
    public ModelAndView plotResidentialCommercialURL(@ModelAttribute("projectSearchForm") ProjectSearchForm projectSearchForm,
                                           HttpServletRequest request) {

        LOGGER.info("Plot Controller called :");

        LOGGER.info("Residential Controller called :" );
        projectSearchForm.setPropertyTypeId("Plot");
        List<ProjectForm> projectFormList = null;
        CityForm cityForm = new CityForm();
        projectSearchForm.setCityForm(cityForm);
        projectFormList = projectSearchService.searchProjects(projectSearchForm);
        projectSearchForm.setProjectFormList(projectFormList);
        request.setAttribute("totalProjects", projectFormList.size());
        request.setAttribute("gridList", request.getParameter("gridList"));

        ModelAndView mv = new ModelAndView("projectGridSort","projectSearchForm",projectSearchForm);
        return mv;
    }

}

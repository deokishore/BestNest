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
import java.util.List;

/**
 * Created by deokishore on 20/03/2016.
 */
@Controller
@RequestMapping("/commercial-property-for-sale")
public class CommercialController {

    private Logger LOGGER = Logger.getLogger(ProjectSearchController.class);

    @Autowired
    ProjectSearchService projectSearchService;

    @RequestMapping(value="{cityCommercialURL}/*", method= RequestMethod.GET)
    public ModelAndView cityCommercialURL(@PathVariable("cityCommercialURL") String cityCommercialURL,
                                           @ModelAttribute("projectSearchForm") ProjectSearchForm projectSearchForm,
                                           HttpServletRequest request) {

        LOGGER.info("Commercial Controller called :" + cityCommercialURL );

        List<ProjectForm> projectFormList = null;
        CityForm cityForm = new CityForm();
        projectSearchForm.setPropertyTypeId(Commercial.COMMERCIAL);
        projectSearchForm.setCityForm(cityForm);

        switch (cityCommercialURL){
            case Commercial.ALL_COMMERCIAL_REAL_ESTATE:
                projectFormList = projectSearchService.searchProjects(projectSearchForm);
                break;
            case Commercial.ALL_COMMERCIAL_REAL_ESTATE_NOIDA:
                cityForm.setCityId(Constant.CITY_NOIDA_ID);
                cityForm.setName(Constant.CITY_NOIDA_NAME);
                projectFormList = projectSearchService.searchProjects(projectSearchForm);
                request.setAttribute("cityId", Constant.CITY_NOIDA_ID);
                request.setAttribute("cityName", Constant.CITY_NOIDA_NAME);
                break;
            case Commercial.ALL_COMMERCIAL_REAL_ESTATE_GREATER_NOIDA:
                cityForm.setCityId(Constant.CITY_GREATER_NOIDA_ID);
                cityForm.setName(Constant.CITY_GREATER_NOIDA_NAME);
                projectFormList = projectSearchService.searchProjects(projectSearchForm);
                request.setAttribute("cityId", Constant.CITY_GREATER_NOIDA_ID);
                request.setAttribute("cityName", Constant.CITY_GREATER_NOIDA_NAME);
                break;
            case Commercial.ALL_COMMERCIAL_REAL_ESTATE_NOIDA_EXTENTION_IN_NOIDA:
                cityForm.setCityId(Constant.CITY_NOIDA_EXT_ID);
                cityForm.setName(Constant.CITY_NOIDA_EXT_NAME);
                projectFormList = projectSearchService.searchProjects(projectSearchForm);
                request.setAttribute("cityId", Constant.CITY_NOIDA_EXT_ID);
                request.setAttribute("cityName", Constant.CITY_NOIDA_EXT_NAME);
                break;
            case Commercial.ALL_COMMERCIAL_REAL_ESTATE_NH_24_IN_GHAZIABAD:
                cityForm.setCityId(Constant.CITY_NH24_GHAZIABAD_ID);
                cityForm.setName(Constant.CITY_NH24_GHAZIABAD_NAME);
                projectFormList = projectSearchService.searchProjects(projectSearchForm);
                request.setAttribute("cityId", Constant.CITY_NH24_GHAZIABAD_ID);
                request.setAttribute("cityName", Constant.CITY_NH24_GHAZIABAD_NAME);
                break;
            case Commercial.ALL_COMMERCIAL_REAL_ESTATE_YAMUNA_EXPRESSWAY_IN_GREATER_NOIDA:
                cityForm.setCityId(Constant.CITY_YAMUNA_EXPRESSWAY_ID);
                cityForm.setName(Constant.CITY_YAMUNA_EXPRESSWAY_NAME);
                projectFormList = projectSearchService.searchProjects(projectSearchForm);
                request.setAttribute("cityId", Constant.CITY_YAMUNA_EXPRESSWAY_ID);
                request.setAttribute("cityName", Constant.CITY_YAMUNA_EXPRESSWAY_NAME);
                break;
            case Commercial.ALL_COMMERCIALL_REAL_ESTATE_DELHI_L_ZONE:
                cityForm.setCityId(Constant.CITY_DELHI_L_ZONE_ID);
                cityForm.setName(Constant.CITY_DELHI_L_ZONE_NAME);
                projectFormList = projectSearchService.searchProjects(projectSearchForm);
                request.setAttribute("cityId", Constant.CITY_DELHI_L_ZONE_ID);
                request.setAttribute("cityName", Constant.CITY_DELHI_L_ZONE_NAME);
                break;
            default:
                break;
        }

        projectSearchForm.setProjectFormList(projectFormList);
        request.setAttribute("totalProjects", projectFormList.size());
        request.setAttribute("gridList", request.getParameter("gridList"));

        ModelAndView mv = new ModelAndView("projectGridSort","projectSearchForm",projectSearchForm);
        return mv;
    }

}

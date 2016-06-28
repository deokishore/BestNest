package com.bestnest.portal.web.controller;

/**
 * Spring MVC controller responsible for authenticating the user.
 * <a href="mailto:deo.kishore@door3.com">Deo Kishore</a>
 * 
 */
import java.security.Principal;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bestnest.portal.web.form.LoginForm;

@Controller
@Scope("session")
public class LoginController {

	private static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);

	
	private static final String[] userArray = new String[] {
			"deo.kishore@bestnest.in","surjit.dewan@bestnest.in" };
			
	@RequestMapping(value = "/authenticate", method = RequestMethod.POST)
	public ModelAndView authenticate(
			@ModelAttribute("loginForm") LoginForm loginForm, HttpSession session) {
		logger.debug(" A user logged in sucessfully");

		List<String> userList = Arrays.asList(userArray);
		
		if(session.getAttribute("login") != null && session.getAttribute("login").equals("success")){
			ModelAndView mv = new ModelAndView("admin");
			session.setAttribute("login", "success");
			return mv;
		}
		
		if (userList.contains(loginForm.getUserId())) {

			if (loginForm.getUserId().equals("deo.kishore@bestnest.in")
					&& loginForm.getPassword().equals("")) {
				ModelAndView mv = new ModelAndView("admin");
				session.setAttribute("login", "success");
				session.setAttribute("user", "deo.kishore@bestnest.in");
				return mv;
				
			}

			if (loginForm.getUserId().equals("birendra.kumar@bestnest.in")
					&& loginForm.getPassword().equals("bestNest2015")) {
				ModelAndView mv = new ModelAndView("admin");
				session.setAttribute("login", "success");
				session.setAttribute("user", "birendra.kumar@bestnest.in");
				return mv;
			}

//			if (loginForm.getUserId().equals("ankit.prajapati@bestnest.in")
//					&& loginForm.getPassword().equals("bestNest2016")) {
//				ModelAndView mv = new ModelAndView("admin");
//				session.setAttribute("login", "success");
//				session.setAttribute("user", "ankit.prajapati@bestnest.in");
//				return mv;
//			}
		}
		
		session.setAttribute("login", "fail");
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

	/**
	 * Redirects to index.html after successful login.
	 * 
	 * @param model
	 * @param principal
	 * @return index page
	 */
	@RequestMapping(value = "/postLogin", method = RequestMethod.GET)
	public String printWelcome(Model model, Principal principal) {
		logger.debug(" A user logged in sucessfully");
		// ModelAndView mv = new ModelAndView("home-page","projectSearchForm",
		// new ProjectSearchForm());
		return "redirect:/index.jsp";
	}

	/**
	 * Redirects to login page for authentication.
	 * 
	 * @param model
	 * @return login page
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		logger.debug(" A user trying to login");
		return "login";
	}

	/**
	 * In case login fails it redirects to login page with error message.
	 * 
	 * @param model
	 * @return login page
	 */
	@RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
	public String loginerror(Model model) {
		model.addAttribute("error", "true");
		return "login";
	}

	/**
	 * Redirects to login page when user clicks on logout link.
	 * 
	 * @param model
	 * @return login page
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model) {
		return "login";

	}

}
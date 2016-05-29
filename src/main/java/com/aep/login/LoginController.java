/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aep.login;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author prime
 */
@Controller
public class LoginController {

    //LoginService service = new LoginService();
    //Autowiring - Dependency will be injected to this, from wherever it is created (@Controller - antation is used to create it).
    //Use the annotation @Autowiring
    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public ModelAndView showLoginpage() {
        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Security Custom Login Form");
        model.addObject("message", "This is welcome page!");
        model.setViewName("hello");
        return model;
    }

    @RequestMapping(value = "/admin**", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Security Custom Login Form With Database Authentication");
        model.addObject("message", "This page is for ROLE_ADMIN only!");
        model.setViewName("admindashboard");
        return model;
    }
    // ++++++++++++++++ Change this to another packge later +++++++++++++++

    // ++++++++++++++++  functionality starts here +++++++++++++++++++++++++
    @RequestMapping(value = "/dataflow**", method = RequestMethod.GET)
    public ModelAndView dataflowPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("title", "The Dataflow of this project");
        model.addObject("message", "Some images goes here");
        model.setViewName("dataflow");
        return model;
    }

    @RequestMapping(value = "/inputs**", method = RequestMethod.GET)
    public ModelAndView inputsPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("title", "Please enter the inputs for the algorithm");
        model.addObject("message", "All parameters if possible for best output");
        model.setViewName("inputs");
        return model;
    }

    @RequestMapping(value = "/results**", method = RequestMethod.GET)
    public ModelAndView resultsPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("title", "Results found wil be displayed here (from the database previous resuts will be displayed");
        model.addObject("message", "Results goes ");
        model.setViewName("results");
        return model;
    }
    // ++++++++++++++++ End functionality here ++++++++++++++++++++++

    //Spring Security see this :
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(
            @RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", "Invalid username and password!");
        }
        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
        }
        model.setViewName("login");
        return model;
    }

    //for 403 access denied page
    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied() {
        ModelAndView model = new ModelAndView();
        //check if user is login
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            model.addObject("username", userDetail.getUsername());
        }
        model.setViewName("403");
        return model;
    }
}

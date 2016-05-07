/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aep.login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody; Used for diaply (not good practice)

/**
 *
 * @author prime
 */
@Controller
public class LoginController {
    
    //LoginService service = new LoginService();
    //Autowiring - Dependency will be injected to this, from wherever it is created (@Controller - antation is used to create it).
    //Use the annotation @Autowiring
    
    @Autowired    
    LoginService service;
    
    @RequestMapping(value="/login", method = RequestMethod.GET)
    public String showLoginpage(){
        return "login";
    }
   
    @RequestMapping(value="/login", method = RequestMethod.POST)
    public String handleLogingRequest(@RequestParam String name,
                                                                @RequestParam String password,
                                                                    ModelMap model){
        if(service.validateUser(name,password)){
        model.put("name",name);
        model.put("password",password);
        return "welcome"; 
        }
        else{
            model.put("errorMessage","Invalid Login Credentials");
        return "login";
        }    
    }
    
}

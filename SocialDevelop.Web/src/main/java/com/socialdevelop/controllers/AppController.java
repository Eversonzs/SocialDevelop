/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.socialdevelop.controllers;

import com.socialdevelop.entities.Users;
import com.socialdevelop.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author evers
 */
@Controller
@RequestMapping("/app")
public class AppController{
    
    @Autowired UserService service_user;
    
    @RequestMapping("/main")
    public String main(){
        return "login-page";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginUser(@RequestParam("name") String name, @RequestParam("password") String password, ModelMap model){
        Users user;
        
        if("".equals(name) || "".equals(password)){
            model.put("error", "You have to fill all the fields.");
            return "login-page";
        }
        
        user = service_user.login(new Users(name, password));
        
        if(user!=null){
            utilities.UserSession.setUserData(user);
            model.put("SESSION", utilities.UserSession.getUserData());
            return "about-page";
        }
        
        model.put("error", "User doesn't exist, please try again.");
        return "login-page";
    }
    
    @RequestMapping("/logout")
    public String logout(){
        /*Clean the data of the user logged.*/
        return "login-page";
    }
}
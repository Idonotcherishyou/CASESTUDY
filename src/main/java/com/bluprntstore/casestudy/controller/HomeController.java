package com.bluprntstore.casestudy.controller;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@SpringBootApplication
@RestController
public class HomeController {


    @RequestMapping(value = {"/" ,"/home"}, method = RequestMethod.GET)
    public ModelAndView create(HttpSession session) throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("home");

//
        return response;
    }
}
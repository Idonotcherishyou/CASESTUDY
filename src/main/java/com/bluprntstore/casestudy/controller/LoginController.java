package com.bluprntstore.casestudy.controller;
import com.bluprntstore.casestudy.formbean.RegisterFormBean;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Slf4j
@Controller
public class LoginController {

    @RequestMapping(value = "/login/login", method = RequestMethod.GET)
    public ModelAndView login() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("login/loginForm");

        return response;
    }

    @RequestMapping(value = "/user/loginSubmit", method = {RequestMethod.POST})
    public ModelAndView loginSubmit(@Valid RegisterFormBean form, BindingResult bindingResult) throws Exception {
        ModelAndView response = new ModelAndView();
        log.info("you are now logged in");
        log.info(form.toString());
        response.setViewName("redirect:/index");
        return response;

    }
}



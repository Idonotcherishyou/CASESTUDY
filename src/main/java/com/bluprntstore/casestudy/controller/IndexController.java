package com.bluprntstore.casestudy.controller;

import com.bluprntstore.casestudy.database.dao.UserDAO;
import com.bluprntstore.casestudy.database.entity.User;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;

@Slf4j
@Controller
public class IndexController {


    @Autowired
    private UserDAO userDao;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index() throws Exception {
        ModelAndView response = new ModelAndView();

        // this little block of code can grab the logged in user and look it up in the
        // database to get the user object
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentPrincipalName = authentication.getName();
        User loggedInUser = userDao.findByEmail(currentPrincipalName);

        if (loggedInUser == null) {
            log.info("Not logged in");
        } else {
            log.info("User logged in " + loggedInUser);
        }

        response.setViewName("index");

        return response;
    }

    @RequestMapping(value = "/home", method = RequestMethod.GET)
    public ModelAndView home() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("product/home");

        return response;

    }
}

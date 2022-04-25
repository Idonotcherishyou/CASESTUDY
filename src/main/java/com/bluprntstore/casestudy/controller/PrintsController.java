package com.bluprntstore.casestudy.controller;

import com.bluprntstore.casestudy.database.dao.PrintsDAO;
import com.bluprntstore.casestudy.database.dao.UserDAO;
import com.bluprntstore.casestudy.database.dao.UserRoleDAO;
import com.bluprntstore.casestudy.database.entity.Prints;
import com.bluprntstore.casestudy.database.entity.User;
import com.bluprntstore.casestudy.database.entity.UserRole;
import com.bluprntstore.casestudy.formbean.PrintsFormBean;
import com.bluprntstore.casestudy.formbean.RegisterFormBean;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import javax.validation.Valid;
import java.util.Date;
import java.util.List;

@Slf4j
@Controller
public class PrintsController {

    @Autowired
    private UserDAO userDAO;
    @Autowired
    private UserRoleDAO userRoleDAO;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private PrintsDAO printsDAO;

    @PreAuthorize("hasAuthority('Admin')")
    @RequestMapping(value = "/home/prints", method = RequestMethod.GET)
    public ModelAndView purchase() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("shop/prints");

        PrintsFormBean form = new PrintsFormBean();
        response.addObject("form", form);
        log.info("purchase");

        return response;
    }
    @PreAuthorize("hasAuthority('Admin')")
    @RequestMapping(value = "/home/printsSubmit", method = { RequestMethod.POST, RequestMethod.GET})
    public ModelAndView purchaseSubmit(@Valid PrintsFormBean form, BindingResult bindingResult) throws Exception {
        ModelAndView response = new ModelAndView();
        log.info("Purchase submit");
        log.info(form.toString());





        if (bindingResult.hasErrors()) {

            for (ObjectError error : bindingResult.getAllErrors()) {
                log.debug(((FieldError)error).getField() + " " + error.getDefaultMessage());
            }
            response.addObject("form", form);
            response.addObject("bindingResult", bindingResult);
            response.setViewName("home/prints");
            return response;
        }


        Prints prints = new Prints();
        if (prints != null) {
            prints = printsDAO.findById(form.getProductId());
        }

        if (prints == null) {
            prints = new Prints();
        }

        // this puts the values into the database from the formbean
        prints.setDescription(form.getDescription());
        prints.setName(form.getProductName());
        prints.setPrice(form.getPrice());
        prints.setImageUrl(form.getImageUrl());
        // actually puts data into database
        printsDAO.save(prints);



        response.setViewName("redirect:/shop/listing");

        return response;





    }

// this controls listing
    @RequestMapping(value = "/shop/listing", method = RequestMethod.GET)
    public ModelAndView listall() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("shop/listing");
        // listing prints from the database
        List<Prints> allprints = printsDAO.findAll();
        response.addObject("allprints",allprints);
        log.info("prints available");

        return response;
    }
}

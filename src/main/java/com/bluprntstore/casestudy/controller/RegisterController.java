package com.bluprntstore.casestudy.controller;

import com.bluprntstore.casestudy.database.dao.UserDAO;
import com.bluprntstore.casestudy.database.dao.UserRoleDAO;
import com.bluprntstore.casestudy.database.entity.User;
import com.bluprntstore.casestudy.database.entity.UserRole;
import com.bluprntstore.casestudy.formbean.RegisterFormBean;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
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

@Slf4j
@Controller
public class RegisterController {

    @Autowired
    private UserDAO userDAO;
    @Autowired
    private UserRoleDAO userRoleDAO;
    @Autowired
    private PasswordEncoder passwordEncoder;

    @RequestMapping(value = "/register/registerForm", method = RequestMethod.GET)
    public ModelAndView create() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("user/register");

        RegisterFormBean form = new RegisterFormBean();
        response.addObject("form", form);
        log.info("create");
        return response;
    }

    @RequestMapping(value = "/user/registerSubmit", method = { RequestMethod.POST, RequestMethod.GET})
    public ModelAndView registerSubmit(@Valid RegisterFormBean form, BindingResult bindingResult) throws Exception {
        ModelAndView response = new ModelAndView();
        log.info("register submit");
        log.info(form.toString());


        if (bindingResult.hasErrors()) {

            for (ObjectError error : bindingResult.getAllErrors()) {
                log.debug(((FieldError)error).getField() + " " + error.getDefaultMessage());
            }
            response.addObject("form", form);
            response.addObject("bindingResult", bindingResult);
            response.setViewName("user/register");
            return response;
        }

        User user = userDAO.findById(form.getId());

        if (user == null) {
            user = new User();
        }
        String password = passwordEncoder.encode(form.getPassword());

        user.setEmail(form.getEmail());
        user.setFirstName(form.getFirstName());
        user.setLastName(form.getLastName());
        user.setPassword(password);
        user.setCreateDate(new Date());
        log.info(form.toString());

        userDAO.save(user);

        Integer newUserId = userDAO.findByEmail(user.getEmail()).getId();
        UserRole newUserRole = new UserRole();
        newUserRole.setRoleName("User");
        newUserRole.setUserId(newUserId);
        userRoleDAO.save(newUserRole);

        response.setViewName("redirect:/login/login");

        return response;
    }
}

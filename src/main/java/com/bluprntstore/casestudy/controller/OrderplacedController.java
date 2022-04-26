package com.bluprntstore.casestudy.controller;


import com.bluprntstore.casestudy.database.dao.PrintsDAO;
import com.bluprntstore.casestudy.database.dao.UserDAO;
import com.bluprntstore.casestudy.database.dao.UserRoleDAO;
import com.bluprntstore.casestudy.database.entity.Prints;
import com.bluprntstore.casestudy.formbean.PrintsFormBean;
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
public class OrderplacedController {

    @Autowired
    private UserDAO userDAO;
    @Autowired
    private UserRoleDAO userRoleDAO;
    @Autowired
    private PrintsDAO printsDAO;


    @RequestMapping(value = "/orderplaced", method = RequestMethod.GET)
    public ModelAndView placedorder() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("/shop/orderplaced");

        log.info("placed order");

        return response;
    }

}
package com.bluprntstore.casestudy.controller;

import com.bluprntstore.casestudy.database.dao.OrderDAO;
import com.bluprntstore.casestudy.database.dao.OrderPrintDAO;
import com.bluprntstore.casestudy.database.dao.PrintsDAO;
import com.bluprntstore.casestudy.database.dao.UserDAO;
import com.bluprntstore.casestudy.database.entity.Order;
import com.bluprntstore.casestudy.database.entity.User;
import com.bluprntstore.casestudy.formbean.OrderFormBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import lombok.extern.slf4j.Slf4j;

import javax.validation.Valid;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
@Slf4j
@Controller
public class CheckoutController {

    @Autowired
    private PrintsDAO printsDAO;

    @Autowired
    private OrderDAO orderDAO;

    @Autowired
    private OrderPrintDAO orderPrintDAO;

    @Autowired
    private UserDAO userDAO;

    @RequestMapping(value = "/shop/checkout", method = RequestMethod.GET)
    public ModelAndView checkout() throws Exception {
        ModelAndView response = new ModelAndView();
        response.setViewName("shop/checkout");

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); // ask spring security for current user
        String loggedUserEmail = authentication.getName(); // get current users email
        User user = userDAO.findByEmail(loggedUserEmail); // find user from db with this email

        // new query for producing list of all products in the cart
        List<Map<String,Object>> cartProducts = orderPrintDAO.getCartPrints(user.getId(), "PENDING");
        response.addObject("cartProducts", cartProducts);

        log.info("cart product list: " + cartProducts.toString());

        double getSubTotal = 0.0;
        double salesTax = .08;
        double calculateSalesTax = 0.0;
        double getCartTotal = 0.0;

//        BigDecimal cartTotal = BigDecimal.valueOf(getOrderTotal);

        for(Map<String,Object> row: cartProducts){
            BigDecimal price = (BigDecimal)row.get("total");
            getSubTotal += price.doubleValue();
            calculateSalesTax = getSubTotal * salesTax;
            getCartTotal = getSubTotal + calculateSalesTax;
        }

        response.addObject("subTotal", getSubTotal);
        response.addObject("salesTax", calculateSalesTax);
        response.addObject("cartTotal", getCartTotal);

        return response;
    }


    @RequestMapping(value = "/shop/checkoutSubmit", method = {RequestMethod.POST})
    public ModelAndView checkoutSubmit(@Valid OrderFormBean orderFormBean, BindingResult bindingResult) throws Exception {
        ModelAndView response = new ModelAndView();

        if (bindingResult.hasErrors()) {

            for (ObjectError error : bindingResult.getAllErrors()) {
                log.info(((FieldError) error).getField() + " " + error.getDefaultMessage());
            }
            response.addObject("orderFormBean", orderFormBean);

            response.addObject("bindingResult", bindingResult);

            response.setViewName("shop/checkout");
            return response;
        }

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); // ask spring security for current user
        String loggedUserEmail = authentication.getName(); // get current users email
        User user = userDAO.findByEmail(loggedUserEmail); // find user from db with this email

        Order order = orderDAO.findByUserIdAndStatus(user.getId(), "PENDING"); // find current users' cart

        order.setCredit_card(orderFormBean.getCredit_card());
        order.setShippingAddress(orderFormBean.getShippingaddress());


        order.setStatus("COMPLETE");

        Order completedOrder = orderDAO.save(order);

        response.addObject("completedOrder", completedOrder);

        response.setViewName("redirect:/home");
        return response;
    }

    //need to validate payment details
    // credit card shows the name, card number, dont care about other details
    // a messages shows if selecting others saying you'll be "redirected"

    //able to submit order and save the order. set cart to complete status.







}

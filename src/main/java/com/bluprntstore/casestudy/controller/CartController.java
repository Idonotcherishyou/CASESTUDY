package com.bluprntstore.casestudy.controller;
import com.bluprntstore.casestudy.database.dao.OrderDAO;
import com.bluprntstore.casestudy.database.dao.OrderPrintDAO;
import com.bluprntstore.casestudy.database.dao.PrintsDAO;
import com.bluprntstore.casestudy.database.dao.UserDAO;
import com.bluprntstore.casestudy.database.entity.Order;
import com.bluprntstore.casestudy.database.entity.OrderPrint;
import com.bluprntstore.casestudy.database.entity.Prints;
import com.bluprntstore.casestudy.database.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;



@Slf4j
@Controller
public class CartController {

    @Autowired
    private PrintsDAO printsDAO;

    @Autowired
    private OrderDAO orderDAO;

    @Autowired
    private OrderPrintDAO orderPrintDAO;

    @Autowired
    private UserDAO userDAO;


//
    @RequestMapping(value = "/shop/cart/{id}") // ex: /cart/addItem/3 (pointing to product with id of 3)
    public ModelAndView addToCart(@PathVariable("id") Integer id) {
        ModelAndView response = new ModelAndView();

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); // ask spring security for current user
        String loggedUserEmail = authentication.getName(); // get current users email
        User user = userDAO.findByEmail(loggedUserEmail); // find user from db with this email

        log.info("found user: " + user.getId());



        Order order = orderDAO.findByUserIdAndStatus(user.getId(), "PENDING"); // find current users' cart

        if(order == null){
            order = new Order(); // create a new one
            order.setStatus("PENDING");
            order.setUser(user); // assign this cart to the current user
            order = orderDAO.save(order); // save to db and reassign "order" variable to DB response (this ensures we have the correct id from sql auto-increment)
        }
        // getting the user order, if null, creating one
        Prints prints = printsDAO.findById(id);
        OrderPrint cartItem = orderPrintDAO.findPrintsOrderByOrderAndPrints(order, prints); // is this item already in the cart?
        if(cartItem == null){ // if not, add it
            cartItem = new OrderPrint();
            cartItem.setOrder(order);
            cartItem.setPrints(prints);
            cartItem.setQuantity(1);
        } else {
            cartItem.setQuantity(cartItem.getQuantity() + 1); // if the item is already in the cart, just increment qty
        }
        OrderPrint savedCartItem = orderPrintDAO.save(cartItem);
        response.addObject("savedCartItem", savedCartItem);
        log.info("added: " + cartItem.getPrints().getName());


        response.setViewName("redirect:/shop/checkout");
//        return ModelAndView("redirect:/shop/checkout/{userId}");
        return response;
    }

    @RequestMapping(value = "/cart/deleteItem/{id}", method = RequestMethod.GET)
    public ModelAndView productRemove(@PathVariable("id") Integer id) throws Exception {

        OrderPrint selectedCartLine = orderPrintDAO.findById(id);

        if ( selectedCartLine == null ) {
            log.info("selectedCartLine is null");
            // this is an error
        } else {

            orderPrintDAO.delete(selectedCartLine);
            System.out.println("product removed from cart");
        }

        return new ModelAndView("redirect:/shop/checkout");
    }






}
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
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.repository.query.FluentQuery;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.function.Function;


@Slf4j
@Controller
public class CartController {


    @Autowired
    private UserDAO userDAO;

    @Autowired
    private PrintsDAO printsDAO;

    @Autowired
    private OrderPrintDAO orderPrintDAO;
    @Autowired
    private OrderDAO orderDAO;

    @RequestMapping(value = "/cart/addItem/{printsid}") // ex: /cart/addItem/3 (pointing to product with id of 3)
    public ModelAndView addToCart(@PathVariable("printsid") Integer id) {
        ModelAndView response = new ModelAndView();

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); // ask spring security for current user
        String loggedUserEmail = authentication.getName(); // get current users email
        User user = userDAO.findByEmail(loggedUserEmail); // find user from db with this email

        log.info("found user: " + user.getId());


//        List<Order> orderList = orderDAO.findAllByUser(user);
//        System.out.println(orderList);
        Order orders = orderDAO.findByUserIdAndCartStatus(user.getId(), "PENDING"); // find current users' cart
//        Order order = orders.get(0);

        if(orders == null){ // if there are no pending orders for this user aka: no active cart
            orders = new Order(); // create a new one
            orders.setStatus("PENDING");
            orders.setOrderdate(new Date());
            orders.setUser(user); // assign this cart to the current user
            orders = orderDAO.save(orders); // save to db and reassign "order" variable to DB response (this ensures we have the correct id from sql auto-increment)
        }
        // getting the user order, if null, creating one
        Prints prints = printsDAO.findById(id);
        OrderPrint cartItem = orderPrintDAO.findPrintsOrderByOrderAndPrints(orders,prints); // is this item already in the cart?
        if(cartItem == null){ // if not, add it
            cartItem = new OrderPrint();
            cartItem.setOrder(orders);
            cartItem.setPrints(prints);
            cartItem.setQuantity(1);
        } else {
            cartItem.setQuantity(cartItem.getQuantity() + 1); // if the item is already in the cart, just increment qty
        }
        OrderPrint savedCartItem = orderPrintDAO.save(cartItem);
        response.addObject("savedCartItem", savedCartItem);
        log.info("added: " + cartItem.getPrints().getPrice());


        response.setViewName("shop/cart");
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

        return new ModelAndView("redirect:/shop/cart");
    }

//
//    if (order == null) {
//        order = new Order();
//        order.setCustomerID(customerID);

//    }




}
//    @RequestMapping(value = "/shop/cart",method = RequestMethod.GET) // ex: /cart/addItem/3 (pointing to product with id of 3)
//    public ModelAndView BlankCart(){
//        ModelAndView response = new ModelAndView();
//
//        Authentication authentication = SecurityContextHolder.getContext().getAuthentication(); // ask spring security for current user
//        String loggedUserEmail = authentication.getName();
//        log.info(loggedUserEmail);
//        User user = userDAO.findByEmail(loggedUserEmail);
//
//
//        response.setViewName("shop/cart");
//        return response;
//    }






//package com.bluprntstore.casestudy;
//
//import com.bluprntstore.casestudy.database.dao.OrderPrintDAO;
//import com.bluprntstore.casestudy.database.dao.PrintsDAO;
//import com.bluprntstore.casestudy.database.dao.UserDAO;
//import com.bluprntstore.casestudy.database.dao.UserRoleDAO;
//import com.bluprntstore.casestudy.database.entity.User;
//import com.bluprntstore.casestudy.database.entity.UserRole;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.CommandLineRunner;
//import org.springframework.stereotype.Component;
//
//import java.util.Date;
//
////@Component
//
//public class AppCommandLineRunner implements CommandLineRunner {
//    OrderPrintDAO orderPrintDAO;
//    PrintsDAO printsDAO;
//    UserDAO userDAO;
//    UserRoleDAO userRoleDAO;
// @Autowired
//    public AppCommandLineRunner(OrderPrintDAO orderPrintDAO, PrintsDAO printsDAO, UserDAO userDAO, UserRoleDAO userRoleDAO) {
//        this.orderPrintDAO = orderPrintDAO;
//        this.printsDAO = printsDAO;
//        this.userDAO = userDAO;
//        this.userRoleDAO = userRoleDAO;
//    }
//
//    @Override
//    public void run(String... args) throws Exception {
//    userDAO.save(new User(1,"wither22@uwm.edu","cherish","witherspoon","1232")
//    );
//
//    }
//
//}

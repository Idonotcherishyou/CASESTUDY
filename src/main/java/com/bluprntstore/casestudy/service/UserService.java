package com.bluprntstore.casestudy.service;

import com.bluprntstore.casestudy.database.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserService {

    @Autowired
    private UserDAO userDao;

    // if you have some more complex logic then you can move it into
    // this class and run it from the controller

}

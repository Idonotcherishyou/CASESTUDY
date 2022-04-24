package com.bluprntstore.casestudy.service;

import com.bluprntstore.casestudy.database.dao.PrintsDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;


public class PrintService {
    @Autowired
    PrintsDAO printsDAO;
}

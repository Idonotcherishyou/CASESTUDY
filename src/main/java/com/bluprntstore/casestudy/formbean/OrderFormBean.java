package com.bluprntstore.casestudy.formbean;

import com.bluprntstore.casestudy.database.entity.User;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@ToString
public class OrderFormBean {

    private Integer id;

    private User user;

    private String status;

    private String shippingaddress;

    private String credit_card;

    private Date orderDate = new Date();


}

package com.bluprntstore.casestudy.formbean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotEmpty;

@Getter
@Setter
@ToString
public class ConversationFormBean {

    @NotEmpty(message="product must not be empty")
    private String productName;

    private String description;

    @NotEmpty(message="blah")
    private String imageURL;

    // do a few more annotations for error checking
    private Double price;

}

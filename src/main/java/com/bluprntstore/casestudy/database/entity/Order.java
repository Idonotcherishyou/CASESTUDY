package com.bluprntstore.casestudy.database.entity;

import lombok.*;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

    @Getter
    @Setter
    @ToString
    @EqualsAndHashCode
    @NoArgsConstructor
    @AllArgsConstructor
    @Entity
    @Table(name = "orders")
    public class Order {

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column(name = "id")
        private Integer id;
        @Nullable
        @Column(name="status")
        private String status;

        @Column(name="order_date")
        Date orderdate;

        @Column(name="credit_card")
        private String credit_card;
        @Column(name = "shipping_address")
        String shippingAddress;




        @ManyToOne(fetch = FetchType.LAZY, optional = false)
        @JoinColumn(name = "user_id_fk", nullable = false)
        private User user;

        @OneToMany(mappedBy = "order", fetch = FetchType.LAZY,
                cascade = CascadeType.ALL)
        private Set<OrderPrint> orderPrint;

    }


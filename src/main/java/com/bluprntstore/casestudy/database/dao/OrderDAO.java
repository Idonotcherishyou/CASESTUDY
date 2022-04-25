package com.bluprntstore.casestudy.database.dao;

import com.bluprntstore.casestudy.database.entity.Order;
import com.bluprntstore.casestudy.database.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderDAO extends JpaRepository<Order, Long> {


    @Query(value = "SELECT * FROM orders WHERE user_id_fk = :userId AND status = :cartStatus", nativeQuery = true)
    public Order findByUserIdAndCartStatus(@Param("userId") Integer userId, @Param("cartStatus") String cartStatus);

    public Order findById(@Param("id") Integer id);

    public List<Order> findAllByUser(@Param("user") User user);



}

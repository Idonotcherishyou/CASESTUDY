package com.bluprntstore.casestudy.database.dao;


import com.bluprntstore.casestudy.database.entity.Order;
import com.bluprntstore.casestudy.database.entity.OrderPrint;
import com.bluprntstore.casestudy.database.entity.Prints;
import com.bluprntstore.casestudy.database.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


import java.util.List;
import java.util.Map;

@Repository
public interface OrderPrintDAO extends JpaRepository<OrderPrint, Long> {

    public OrderPrint findById(@Param("id") Integer id);

    public List<OrderPrint> findByOrder(@Param("order") Order order);

    public OrderPrint findPrintsOrderByOrderAndPrints(@Param("order") Order order, @Param("prints") Prints prints);

    @Query(value="select p.id as prints_id_fk, p.name, p.price, op.quantity, o.id as order_id_fk, (price * quantity) as total " +
            "from prints p, orderprint op, order o " +
            "where p.id = op.prints_id_fk and o.id = op.order_id_fk " +
            "and o.user_id_fk = :userId and status = :status", nativeQuery = true)
    List<Map<String,Object>> getCartPrints(@Param("userId") Integer userId, @Param("status") String status );




}
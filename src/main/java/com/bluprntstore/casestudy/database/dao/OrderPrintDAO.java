package com.bluprntstore.casestudy.database.dao;

import com.bluprntstore.casestudy.database.entity.OrderPrint;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Map;

public interface OrderPrintDAO extends JpaRepository<OrderPrint, Long> {
    public OrderPrint findById(@Param("id") Integer id);

    @Query(value = "select prints_id, count(*) as cnt, p.name from order_print op, prints p where op.prints_id = p.id by prints_id",
    nativeQuery = true)
    List<Map<String,Object>> getPrintNameAndOrderCount();

}

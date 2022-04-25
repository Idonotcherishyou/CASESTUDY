package com.bluprntstore.casestudy.database.dao;

import com.bluprntstore.casestudy.database.entity.Prints;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface PrintsDAO extends JpaRepository<Prints, Long> {
    static void create(Prints printCart) {
    }

    Prints findById(@Param("id") Integer id);


}

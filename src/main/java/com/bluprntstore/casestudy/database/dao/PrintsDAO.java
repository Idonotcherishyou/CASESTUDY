package com.bluprntstore.casestudy.database.dao;

import com.bluprntstore.casestudy.database.entity.Prints;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



@Repository
public interface PrintsDAO extends JpaRepository<Prints, Long> {

    public Prints findById(@Param("id") Integer id);

}

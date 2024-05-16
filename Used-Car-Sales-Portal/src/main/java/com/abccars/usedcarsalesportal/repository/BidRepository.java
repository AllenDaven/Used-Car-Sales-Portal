package com.abccars.usedcarsalesportal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abccars.usedcarsalesportal.entity.Car;
import com.abccars.usedcarsalesportal.entity.CarBidding;

@Repository
public interface BidRepository extends JpaRepository<CarBidding, Long> {

	//Can develop - Custom query & custom method 
	@Query( "select b from CarBidding b where b.car in :carid" )
	List<CarBidding> findByCarid(@Param("carid") Car car);
}

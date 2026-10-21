package com.SB.shantiniketan;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TransportRepository extends JpaRepository<Transport, Integer> {

	@Query("SELECT t FROM Transport t WHERE LOWER(t.driverName) LIKE LOWER(CONCAT('%', :keyword, '%')) "
			+ "OR LOWER(t.numberPlateNo) LIKE LOWER(CONCAT('%', :keyword, '%')) "
			+ "OR LOWER(t.vehicleCompany) LIKE LOWER(CONCAT('%', :keyword, '%')) "
			+ "OR LOWER(t.vehicleModel) LIKE LOWER(CONCAT('%', :keyword, '%'))")
	List<Transport> searchTransport(@Param("keyword") String keyword);
}
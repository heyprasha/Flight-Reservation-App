package com.prasha.flightapp.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prasha.flightapp.entities.Flight;

public interface FlightRepository extends JpaRepository<Flight, Long> {

	@Query("from Flight where departure_city=:from and arrival_city=:to and date_of_departure=:dateOfDeparture")
	List<Flight> findFlight(@Param("from") String from, @Param("to") String to,
			@Param("dateOfDeparture") Date dateOfDeparture);
}

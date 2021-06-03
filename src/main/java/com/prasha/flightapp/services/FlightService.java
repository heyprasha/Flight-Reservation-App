package com.prasha.flightapp.services;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import com.prasha.flightapp.entities.Flight;

public interface FlightService {

	List<Flight> findFlights(String from, String to, LocalDate dateOfDeparture);

	Flight findFlightById(Long id);

	List<Flight> getFlights();

}

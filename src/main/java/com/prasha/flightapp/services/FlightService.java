package com.prasha.flightapp.services;

import java.util.Date;
import java.util.List;


import com.prasha.flightapp.entities.Flight;

public interface FlightService {

	List<Flight> findFlights(String from, String to, Date dateOfDeparture);

	Flight findFlightById(Long id);

}

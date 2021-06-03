package com.prasha.flightapp.services;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prasha.flightapp.entities.Flight;
import com.prasha.flightapp.repositories.FlightRepository;

@Service
public class FlightServiceImpl implements FlightService {

	@Autowired
	private FlightRepository flightRepo;

	@Override
	public List<Flight> findFlights(String from, String to, LocalDate dateOfDeparture) {
		List<Flight> findFlight = flightRepo.findFlight(from, to, dateOfDeparture);
		return findFlight;
	}

	@Override
	public Flight findFlightById(Long id) {
		Optional<Flight> findById = flightRepo.findById(id);
		Flight flight = findById.get();
		return flight;
	}

	@Override
	public List<Flight> getFlights() {
		List<Flight> allFlights = flightRepo.findAll();
		return allFlights;
	}

}

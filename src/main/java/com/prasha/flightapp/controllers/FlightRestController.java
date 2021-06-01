package com.prasha.flightapp.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.prasha.flightapp.entities.Flight;
import com.prasha.flightapp.services.FlightService;

@RestController
@RequestMapping("/flights")
public class FlightRestController {

	@Autowired
	private FlightService flightService;

	@GetMapping("/getFlights")
	public List<Flight> getFlights() {
		List<Flight> flights = flightService.getFlights();
		return flights;
	}
}

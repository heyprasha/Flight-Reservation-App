package com.prasha.flightapp.controllers;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.prasha.flightapp.entities.Flight;
import com.prasha.flightapp.services.FlightService;

@Controller
public class FlightController {

	@Autowired
	private FlightService flightService;
	
	@RequestMapping("/findFlights")
	public String findFlights(@RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("dateOfDeparture") @DateTimeFormat(pattern = "yyyy-MM-dd") LocalDate dateOfDeparture,
			ModelMap modelMap) {
		System.out.println(dateOfDeparture);
		if (from != null && to != null && dateOfDeparture != null) {
			List<Flight> findFlights = flightService.findFlights(from, to, dateOfDeparture);
			if (!findFlights.isEmpty()) {
				modelMap.addAttribute("findFlights", findFlights);
				return "displayFlights";
			}
			modelMap.addAttribute("noFlight", "No Flights Available");
			return "findFlights";
		}
		return "findFlights";
	}
	
	@RequestMapping("/showCompleteReservation")
	public String showCompleteReservation(@RequestParam("flightId") Long id, ModelMap modelMap) {
		Flight flight = flightService.findFlightById(id);
		modelMap.addAttribute("flight", flight);
		return "showCompleteReservation";
	}
}

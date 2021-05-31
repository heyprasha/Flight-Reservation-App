package com.prasha.flightapp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.prasha.flightapp.dto.PaymentDto;
import com.prasha.flightapp.entities.Reservation;
import com.prasha.flightapp.services.ReservationService;
import com.prasha.flightapp.utilities.EmailUtil;

@Controller
public class ReservationController {

	@Autowired
	private ReservationService reservationService;
	
	@Autowired
	private EmailUtil emailUtil;
	
	@RequestMapping("/confirmReservation")
	public String confirmReservation(PaymentDto paymentDto, ModelMap modelMap) {
		Reservation bookFlight = reservationService.bookFlight(paymentDto);
		emailUtil.sendSimpleMessage("lonkarps79@gmail.com", "Ticket Booked", "Hello ticket booked");
		modelMap.addAttribute("ticketBooked", bookFlight);
		return "confirmReservation";
	}
}

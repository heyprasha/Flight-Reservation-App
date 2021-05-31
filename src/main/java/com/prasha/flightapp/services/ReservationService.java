package com.prasha.flightapp.services;

import com.prasha.flightapp.dto.PaymentDto;
import com.prasha.flightapp.entities.Reservation;

public interface ReservationService {

	Reservation bookFlight(PaymentDto paymentDto);
	
	
}

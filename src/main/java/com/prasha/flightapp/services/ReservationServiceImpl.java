package com.prasha.flightapp.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prasha.flightapp.dto.PaymentDto;
import com.prasha.flightapp.entities.Flight;
import com.prasha.flightapp.entities.Passenger;
import com.prasha.flightapp.entities.Reservation;
import com.prasha.flightapp.repositories.FlightRepository;
import com.prasha.flightapp.repositories.PassengerRepository;
import com.prasha.flightapp.repositories.ReservationRepository;

@Service
public class ReservationServiceImpl implements ReservationService {

	@Autowired
	private PassengerRepository passengerRepo;
	
	@Autowired
	private FlightRepository flightRepo;
	
	@Autowired
	private ReservationRepository reservationRepo;
	
	
	@Override
	public Reservation bookFlight(PaymentDto paymentDto) {
		// Save data to passenger table
		Passenger passenger = new Passenger();
		passenger.setFirstName(paymentDto.getFirstName());
		passenger.setLastName(paymentDto.getLastName());
		passenger.setMiddleName(paymentDto.getMiddleName());
		passenger.setEmail(paymentDto.getEmail());
		passenger.setPhone(paymentDto.getPhone());
		passengerRepo.save(passenger);
		
		Long flightId = paymentDto.getFlightId();
		Optional<Flight> findById = flightRepo.findById(flightId);
		Flight flight = findById.get();
		
		// Save data to reservation table
		Reservation reservation = new Reservation();
		reservation.setFlight(flight);
		reservation.setPassenger(passenger);
		reservation.setCheckedIn(false);
		reservation.setNumberOfBags(0);
		reservationRepo.save(reservation);

		return reservation;
	}

}

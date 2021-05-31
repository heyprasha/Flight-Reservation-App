package com.prasha.flightapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
public class FlightReservationAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(FlightReservationAppApplication.class, args);
	}
}

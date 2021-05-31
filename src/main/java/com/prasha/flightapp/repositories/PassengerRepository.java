package com.prasha.flightapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.prasha.flightapp.entities.Passenger;

public interface PassengerRepository extends JpaRepository<Passenger, Long> {

}

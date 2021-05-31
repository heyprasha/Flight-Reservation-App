package com.prasha.flightapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.prasha.flightapp.entities.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {

}

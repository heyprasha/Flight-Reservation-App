package com.prasha.flightapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.prasha.flightapp.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

	User findByEmail(String email);

}

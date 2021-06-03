package com.prasha.flightapp.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.prasha.flightapp.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {

	@Query("from User where email=:email and password=:password")
	User findUser(@Param("email") String email, @Param("password") String password);

}

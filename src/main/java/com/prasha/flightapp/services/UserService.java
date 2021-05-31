package com.prasha.flightapp.services;

import com.prasha.flightapp.entities.User;

public interface UserService {

	void signUp(User user);

	User login(String email);

}

package com.prasha.flightapp.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prasha.flightapp.entities.User;
import com.prasha.flightapp.repositories.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepo;
	
	@Override
	public void signUp(User user) {
		userRepo.save(user);
	}
	
	@Override
	public User verifyLogin(String email, String password) {
		User user = userRepo.findUser(email, password);
		return user;
	}
}

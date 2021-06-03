package com.prasha.flightapp.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.prasha.flightapp.entities.User;
import com.prasha.flightapp.services.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/signup")
	public String signUp() {
		return "signup";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/newSignup")
	public String newSignUp(@ModelAttribute("user") User user, ModelMap modelmap) {
		userService.signUp(user);
		modelmap.addAttribute("signupSuccess", "SignUp successful. Please Login to continue");
		return "login";

	}

	@RequestMapping("/verifyLogin")
	public String verifyLogin(@RequestParam("email") String email, @RequestParam("password") String password,
			ModelMap modelmap) {
		User foundUser = userService.verifyLogin(email, password);
		if (foundUser != null) {
			modelmap.addAttribute("loginSuccess", foundUser.getFirstName());
			return "findFlights";
		} else {
			modelmap.addAttribute("loginFailed", "Email or Password invalid");
			return "login";
		}

	}
}

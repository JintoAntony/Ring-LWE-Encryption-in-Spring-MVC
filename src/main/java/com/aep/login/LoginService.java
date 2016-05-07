package com.aep.login;

//We need to Inject this to the Login controller. For that use the annotation @Service.

import org.springframework.stereotype.Service;

//It will create it here, and serve where ever it needs

@Service
public class LoginService {
	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("in28Minutes") && password.equals("dummy");
	}

}
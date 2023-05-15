package com.jordan.loginandreg.services;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import com.jordan.loginandreg.models.User;
import com.jordan.loginandreg.models.LoginUser;
import com.jordan.loginandreg.repositories.UserRepository;
    
@Service
public class UserService {
	
	 @Autowired
	 private UserRepository userRepo;
	    
	    // TO-DO: Write register and login methods!
	    public User createUser(User newUser) {
	        // TO-DO: Additional validations!
	    	String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
	        newUser.setPassword(hashed);
	        return userRepo.save(newUser);
	    }
	    
	    public User getUser(String email) {
	    	Optional<User> potentialUser = userRepo.findByEmail(email);
	    	return potentialUser.isPresent() ? potentialUser.get() : null;
	    }
	    
	    public User getUser(Long id) {
	    	Optional<User> potentialUser = userRepo.findById(id);
	    	return potentialUser.isPresent() ? potentialUser.get() : null;
	    }
	    
	    public User login(LoginUser loginUser, BindingResult result) {
	        // TO-DO: Additional validations!
	    	if(result.hasErrors()) {
				return null;
			}
	    	
	    	// make sure user exists
			User existingUser = getUser(loginUser.getEmail());
			if(existingUser == null) {
				result.rejectValue("email", "Unique", "Email already exist");
				return null;
			}
			
			// make sure passwords match
			if(!BCrypt.checkpw(loginUser.getPassword(), existingUser.getPassword())) {
				result.rejectValue("email", "Unique", "Bad Creds");
				return null;
			}
			
			return existingUser;
	        
	    }
}
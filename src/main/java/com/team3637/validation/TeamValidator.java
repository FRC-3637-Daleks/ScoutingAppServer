package com.team3637.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.team3637.model.Team;

@Component
public class TeamValidator implements Validator {
	
	//private final static String EMPLOYEES_NUMBER = "emplNumber";

	@Override
	public boolean supports(Class<?> clazz) {
		return Team.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Team team = (Team) target;
		
		//String imageLoc = team.getImageLoc();
		
		ValidationUtils.rejectIfEmpty(errors, "name", "team.name.empty");
		ValidationUtils.rejectIfEmpty(errors, "imageLoc", "team.imageLoc.empty");

	}

}

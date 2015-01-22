package com.team3637.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.team3637.model.Match;

@Component
public class MatchValidator implements Validator {
	
	//private final static String EMPLOYEES_NUMBER = "emplNumber";

	@Override
	public boolean supports(Class<?> clazz) {
		return Match.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Match match = (Match) target;
		
		//String imageLoc = match.getImageLoc();
		
		ValidationUtils.rejectIfEmpty(errors, "matchNum", "match.matchNum.empty");

	}

}

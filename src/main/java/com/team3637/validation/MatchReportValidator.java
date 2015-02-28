package com.team3637.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.team3637.model.MatchReport;

@Component
public class MatchReportValidator implements Validator {
	
	//private final static String EMPLOYEES_NUMBER = "emplNumber";

	@Override
	public boolean supports(Class<?> clazz) {
		return MatchReport.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		MatchReport matchReport = (MatchReport) target;
		
		//String imageLoc = match.getImageLoc();
		
		ValidationUtils.rejectIfEmpty(errors, "matchNum", "match.matchNum.empty");

	}

}

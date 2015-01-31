/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.team3637.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.team3637.model.Schedule;

@Component
public class ScheduleValidator implements Validator{
    @Override
	public boolean supports(Class<?> clazz) {
		return Schedule.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Schedule schedule = (Schedule) target;
		
		//ValidationUtils.rejectIfEmpty(errors, "matchNum", "schedule.matchNum.empty");

	}
}

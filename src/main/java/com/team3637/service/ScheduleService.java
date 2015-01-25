package com.team3637.service;

import java.util.List;

import com.team3637.exception.ScheduleNotFound;
import com.team3637.model.Schedule;

public interface ScheduleService {
	
	public Schedule create(Schedule schedule);
	public Schedule delete(int matchNum) throws ScheduleNotFound;
	public List<Schedule> findAll();
	public Schedule update(Schedule schedule) throws ScheduleNotFound;
	public Schedule findByMatchNum(int matchNum);

}

package com.team3637.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.team3637.exception.ScheduleNotFound;
import com.team3637.model.Schedule;
import com.team3637.repository.ScheduleRepository;

@Service
public class ScheduleServiceImpl implements ScheduleService {
	
	@Resource
	private ScheduleRepository scheduleRepository;

	@Override
	@Transactional
	public Schedule create(Schedule schedule) {
		Schedule createdSchedule = schedule;
		return scheduleRepository.save(createdSchedule);
	}
	
	@Override
	@Transactional
	public Schedule findByMatchNum(int matchNum) {
		return scheduleRepository.findOne(matchNum);
	}

	@Override
	@Transactional(rollbackFor=ScheduleNotFound.class)
	public Schedule delete(int matchNum) throws ScheduleNotFound {
		Schedule deletedSchedule = scheduleRepository.findOne(matchNum);
		
		if (deletedSchedule == null)
			throw new ScheduleNotFound();
		
		scheduleRepository.delete(deletedSchedule);
		return deletedSchedule;
	}

	@Override
	@Transactional
	public List<Schedule> findAll() {
		return scheduleRepository.findAll();
	}

	@Override
	@Transactional(rollbackFor=ScheduleNotFound.class)
	public Schedule update(Schedule schedule) throws ScheduleNotFound {
		Schedule updatedSchedule = scheduleRepository.findOne(schedule.getMatchNum());
		
		if (updatedSchedule == null)
			throw new ScheduleNotFound();
		
		updatedSchedule.setMatchNum(schedule.getMatchNum());
		return updatedSchedule;
	}

}

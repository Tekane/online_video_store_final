package com.online_leave_app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.online_leave_app.model.Employee;
import com.online_leave_app.model.Leave;
import com.online_leave_app.repository.LeaveRepository;

@Service
public class LeaveService {
	private LeaveRepository leaveRepository;
	
	@Autowired
	public LeaveService(LeaveRepository leaveRepository) {
		this.leaveRepository = leaveRepository;
	}
	public void applayLeave(Leave leave,Employee employee){
		leave.setEmployee(employee);
		leaveRepository.save(leave);
	}
	public  List<Leave> findLeaveApplication(Employee employee){
		return leaveRepository.findAll();
	}
}

package com.online_leave_app.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import com.online_leave_app.model.Employee;
import com.online_leave_app.model.Role;
import com.online_leave_app.repository.EmployeeRepository;

@Service
public class EmployeeService {
	private EmployeeRepository employeeRepository;
	
	@Autowired
	public EmployeeService(EmployeeRepository employeeRepository) {
		this.employeeRepository = employeeRepository;
	}
	public void createEmployee(Employee employee){
		BCryptPasswordEncoder encoder =  new BCryptPasswordEncoder();
		employee.setPassword(encoder.encode(employee.getPassword()));
		Role role =  new Role("USER");
		List<Role> roles =  new ArrayList<>();
		roles.add(role);
		employee.setRoles(roles);
		employeeRepository.save(employee);
	}
	public void createAdmin(Employee employee){
		BCryptPasswordEncoder encoder =  new BCryptPasswordEncoder();
		employee.setPassword(encoder.encode(employee.getPassword()));
		Role role =  new Role("ADMIN");
		List<Role> roles =  new ArrayList<>();
		roles.add(role);
		employee.setRoles(roles);
		employeeRepository.save(employee);
	}
	public Employee findOne(String email){
		return employeeRepository.getOne(email);
	}
	
	
}

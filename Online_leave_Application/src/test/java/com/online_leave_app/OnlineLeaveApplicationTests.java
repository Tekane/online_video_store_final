package com.online_leave_app;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.online_leave_app.model.Employee;
import com.online_leave_app.model.Leave;
import com.online_leave_app.service.EmployeeService;
import com.online_leave_app.service.LeaveService;
@RunWith(SpringRunner.class)
@SpringBootTest
public class OnlineLeaveApplicationTests {
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private LeaveService leaveService;
	@Before
	public void iniDb() {
		{
			Employee employee =  new Employee("Phasha15@gmail.com", "123456", "Tekane", "Phasha", "02/06/1992", "02/05/2018", "123345879556", "RSA ID");
			employeeService.createEmployee(employee);
		}
		{
			Employee employee =  new Employee("testAdmin@gmail.com", "246810", "Modiegi", "Phasha", "02/06/1994", "02/05/2018", "321465654865", "RSA ID");
			employeeService.createEmployee(employee);
		}
		    Leave leave =  new Leave("02/03/2018", "02/06/2018", "Sickness", "Annual", "Pending");
		    
		    Employee employee =  employeeService.findOne("Phasha15@gmail.com");
		    leaveService.applayLeave(leave, employee);
	    }
	@Test
	public void testEmployee() {
		Employee employee =  employeeService.findOne("Phasha15@gmail.com");
		assertNotNull(employee);
		Employee admin =  employeeService.findOne("testAdmin@gmail.com");
		assertEquals(admin.getEmail(), "testAdmin@gmail.com");
	}
	@Test
	public void testLeave() {
		Employee employee =  employeeService.findOne("Phasha15@gmail.com");
		List<Leave> leave =  leaveService.findLeaveApplication(employee);
		assertNotNull(leave);
	}

}

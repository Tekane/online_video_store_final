package com.online_leave_app.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.online_leave_app.model.Employee;
public interface EmployeeRepository extends JpaRepository<Employee, String>{
}

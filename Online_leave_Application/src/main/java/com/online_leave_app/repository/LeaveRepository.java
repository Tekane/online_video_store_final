package com.online_leave_app.repository;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;

import com.online_leave_app.model.Employee;
import com.online_leave_app.model.Leave;
public interface LeaveRepository extends JpaRepository<Leave, Long>{


}

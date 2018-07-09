package com.online_leave_app.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.online_leave_app.model.Role;
public interface ReloReposity extends JpaRepository<Role, String>{

}

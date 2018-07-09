package com.online_leave_app.model;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
@Entity
@Table(name="emp_role")
public class Role {
	@Id
	private String name;
	@ManyToMany(mappedBy="roles")
	private List<Employee> employees;
	public Role() {
	}
	public Role(String name, List<Employee> employees) {
		this.name = name;
		this.employees = employees;
	}
	public Role(String name) {
		super();
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Employee> getEmployees() {
		return employees;
	}
	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}
}

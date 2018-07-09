package com.online_leave_app.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
@Entity
@Table(name="employees")
public class Employee {
	@Id
	@Email
	@NotEmpty
	@Column(unique =true)
	private String email;
	@Size(min = 4)
	private String password;
	@NotEmpty
	private String name;
	private String surname;
	private String dateOfBirth;
	private String dateOfEmployment;
	private String idNumber;
	private String idType;
	@OneToMany(mappedBy = "employee",cascade = CascadeType.ALL)
	List<Leave> leaves;
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(name="EMPLOYEE_ROLES",joinColumns= {@JoinColumn(name="EMAIL",referencedColumnName="email")},
	inverseJoinColumns ={@JoinColumn(name="ROLE_NAME",referencedColumnName="name")})
	List<Role> roles;
	public Employee() {
	}
	public Employee(String email, String password, String name, String surname, String dateOfBirth,
			String dateOfEmployment, String idNumber, String idType) {
		this.email = email;
		this.password = password;
		this.name = name;
		this.surname = surname;
		this.dateOfBirth = dateOfBirth;
		this.dateOfEmployment = dateOfEmployment;
		this.idNumber = idNumber;
		this.idType = idType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getDateOfEmployment() {
		return dateOfEmployment;
	}
	public void setDateOfEmployment(String dateOfEmployment) {
		this.dateOfEmployment = dateOfEmployment;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	public String getIdType() {
		return idType;
	}
	public void setIdType(String idType) {
		this.idType = idType;
	}
	public List<Leave> getLeaves() {
		return leaves;
	}
	public void setLeaves(List<Leave> leaves) {
		this.leaves = leaves;
	}
	public List<Role> getRoles() {
		return roles;
	}
	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}
}

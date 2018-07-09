package com.online_leave_app.model;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
@Entity
@Table(name="emp_leave")
public class Leave {
	@Id
	@GeneratedValue
	private Long id;
	@NotEmpty
	private String startDate;
	@NotEmpty
	private String endDate;
	@NotEmpty
	private String reason;
	@NotEmpty
	private String leaveType;
	@NotEmpty
	private String approved;
	@ManyToOne
	@JoinColumn(name="EMPLOYEE_EMAIL")
	private Employee employee;
	public Leave() {
	}
	public Leave(Long id, String startDate, String endDate, String reason, String leaveType, String approved,
			Employee employee) {
		this.id = id;
		this.startDate = startDate;
		this.endDate = endDate;
		this.reason = reason;
		this.leaveType = leaveType;
		this.approved = approved;
		this.employee = employee;
	}
	public Leave(String startDate, String endDate, String reason, String leaveType, String approved) {
		this.startDate = startDate;
		this.endDate = endDate;
		this.reason = reason;
		this.leaveType = leaveType;
		this.approved = approved;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}
	public String getApproved() {
		return approved;
	}
	public void setApproved(String approved) {
		this.approved = approved;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
}

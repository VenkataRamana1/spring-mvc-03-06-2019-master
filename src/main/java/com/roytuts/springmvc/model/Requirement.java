package com.roytuts.springmvc.model;

import java.sql.Date;

public class Requirement {

	private String jobCode;
	private String experiencelevel;
	private String skillset;
	private String uploadedby;
	private String categoryId;
	private Date updatedOn;
	private String status;
	private String noofPositions;
	private String approvedBy;
	private String technology;
	private String department;

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getJobCode() {
		return jobCode;
	}

	public void setJobCode(String jobcode) {
		this.jobCode = jobcode;
	}

	public String getExperiencelevel() {
		return experiencelevel;
	}

	public void setExperiencelevel(String experiencelevel) {
		this.experiencelevel = experiencelevel;
	}

	public String getSkillset() {
		return skillset;
	}

	public void setSkillset(String skillSet) {
		this.skillset = skillSet;
	}

	public String getUploadedby() {
		return uploadedby;
	}

	public void setUploadedby(String uploadedby) {
		this.uploadedby = uploadedby;
	}

	public Date getUpdatedOn() {
		return updatedOn;
	}

	public void setUpdatedOn(Date updatedOn) {
		this.updatedOn = updatedOn;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getNoofPositions() {
		return noofPositions;
	}

	public void setNoofPositions(String noofPositions) {
		this.noofPositions = noofPositions;
	}

	public String getApprovedBy() {
		return approvedBy;
	}

	public void setApprovedBy(String approvedBy) {
		this.approvedBy = approvedBy;
	}

	public String getTechnology() {
		return technology;
	}

	public void setTechnology(String technology) {
		this.technology = technology;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	
	
}
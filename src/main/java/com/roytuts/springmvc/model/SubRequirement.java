package com.roytuts.springmvc.model;

public class SubRequirement {

	private int innerjobid;
	private String jobCode;
	private String ProjectName;
	private String department;
	
	public int getInnerjobid() {
		return innerjobid;
	}
	public void setInnerjobid(int innerjobid) {
		this.innerjobid = innerjobid;
	}

	public String getProjectName() {
		return ProjectName;
	}
	public void setProjectName(String projectName) {
		ProjectName = projectName;
	}
	public String getJobCode() {
		return jobCode;
	}
	public void setJobCode(String jobcode) {
		this.jobCode = jobcode;
	}
	
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
}

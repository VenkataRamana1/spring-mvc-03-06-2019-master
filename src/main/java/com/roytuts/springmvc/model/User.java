package com.roytuts.springmvc.model;

import java.util.Set;

public class User {
  
private String UserId;

private String FirstName;

private String MiddleName;

private String LastName;

private String uname;

private String pwd;

private boolean isAdmin;

private String MgrId;

private String userEmail;

private Set<UserRoles> userRoles;

public String getUserId() {
	return UserId;
}

public void setUserId(String userId) {
	UserId = userId;
}

public String getFirstName() {
	return FirstName;
}

public void setFirstName(String firstName) {
	FirstName = firstName;
}

public String getMiddleName() {
	return MiddleName;
}

public void setMiddleName(String middleName) {
	MiddleName = middleName;
}

public String getLastName() {
	return LastName;
}

public void setLastName(String lastName) {
	LastName = lastName;
}

public String getUname() {
	return uname;
}

public void setUname(String uname) {
	this.uname = uname;
}

public String getPwd() {
	return pwd;
}

public void setPwd(String pwd) {
	this.pwd = pwd;
}

public boolean isAdmin() {
	return isAdmin;
}

public void setAdmin(boolean isAdmin) {
	this.isAdmin = isAdmin;
}

public String getMgrId() {
	return MgrId;
}

public void setMgrId(String mgrId) {
	MgrId = mgrId;
}

public String getUserEmail() {
	return userEmail;
}

public void setUserEmail(String userEmail) {
	this.userEmail = userEmail;
}

public Set<UserRoles> getUserRoles() {
	return userRoles;
}

public void setUserRoles(Set<UserRoles> userRoles) {
	this.userRoles = userRoles;
}



}

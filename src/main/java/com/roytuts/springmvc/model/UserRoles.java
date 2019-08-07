package com.roytuts.springmvc.model;

import java.util.Set;

public class UserRoles {

	private int RoleID;
	
	private String RoleName;
	
	private Set<User> user;

	public int getRoleID() {
		return RoleID;
	}

	public void setRoleID(int roleID) {
		RoleID = roleID;
	}

	public String getRoleName() {
		return RoleName;
	}

	public void setRoleName(String roleName) {
		RoleName = roleName;
	}

	public Set<User> getUser() {
		return user;
	}

	public void setUser(Set<User> user) {
		this.user = user;
	}
	
	
	
}

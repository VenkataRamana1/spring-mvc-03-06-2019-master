package com.roytuts.springmvc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.roytuts.springmvc.model.Category;

public class CategoryRowMapper implements RowMapper<Category> {

	@Override
	public Category mapRow(ResultSet rs, int row) throws SQLException {
		Category category = new Category();
		category.setCategoryId(rs.getString("categoryId"));
		category.setEmployeeId(rs.getString("employeeId"));
		category.setDepartment(rs.getString("department"));
		category.setProject(rs.getString("project"));
		category.setTeamName(rs.getString("teamName"));
		return category;
	}
}

package com.roytuts.springmvc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.roytuts.springmvc.mapper.CategoryRowMapper;
import com.roytuts.springmvc.model.Category;
import com.roytuts.springmvc.service.CategoryService;

@Repository
@Transactional
public class CategoryDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public Category getCategory(final String jobcode) {
		Category Category = jdbcTemplate.queryForObject("select * from requirementcategory where categoryId = ?",
				new Object[] { jobcode }, new CategoryRowMapper());
		return Category;
	}

	public List<Category> getCategories() {

		List<Category> Categories = jdbcTemplate.query("select * from requirementcategory", new CategoryRowMapper());
		return Categories;
	}

	public void addCategory(final Category category) {

		SimpleJdbcInsert simpleJdbcInsert = new SimpleJdbcInsert(jdbcTemplate).withTableName("requirementcategory");
		Map<String, Object> parameters = new HashMap<String, Object>();
		parameters.put("teamName", category.getTeamName());
		parameters.put("project", category.getProject());
		parameters.put("categoryId", category.getCategoryId());
		parameters.put("department", category.getDepartment());
		parameters.put("employeeId", category.getEmployeeId());
		simpleJdbcInsert.execute(parameters);
	}

	
	public int updateCategory(final Category category) {
		
		String sql="update requirementcategory set employeeId = ?, Department = ?,project = ? ,teamName = ? where categoryId = ?";
		try {
			int counter = jdbcTemplate.update(sql, new Object[] {  category.getEmployeeId(),
					category.getDepartment(), category.getProject(),
					category.getTeamName(), category.getCategoryId() });
			return counter;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public void deleteCategory(final String jobcode) {
		jdbcTemplate.update("delete from requirementcategory where categoryId = ?", new Object[] { jobcode });
	}

}

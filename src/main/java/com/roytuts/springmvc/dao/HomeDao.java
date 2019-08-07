package com.roytuts.springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.roytuts.springmvc.mapper.RequirementRowMapper;
import com.roytuts.springmvc.model.Requirement;
@Repository
@Transactional
public class HomeDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public Requirement getRequirement(final String jobcode) {
		Requirement requirement = jdbcTemplate.queryForObject("select count(department) from requirementcategory where department = IT", new Object[] { jobcode },
				new RequirementRowMapper());
		return requirement;
	}

	public List<Requirement> getRequirements() {
		
		List<Requirement> requirements = jdbcTemplate.query("select * from requirementcategory", new RequirementRowMapper());
		return requirements;
	}
	
}

package com.roytuts.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roytuts.springmvc.dao.CategoryDao;
import com.roytuts.springmvc.model.Category;
@Service
public class HomeService {
	@Autowired
	private CategoryDao categoryDao;
	
	public Iterable<Category> findAll() {
		return categoryDao.getCategories();
	}
}

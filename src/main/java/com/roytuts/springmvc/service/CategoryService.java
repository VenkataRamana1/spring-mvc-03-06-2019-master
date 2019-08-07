package com.roytuts.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roytuts.springmvc.dao.CategoryDao;
import com.roytuts.springmvc.dao.RequirementDao;
import com.roytuts.springmvc.model.Category;
import com.roytuts.springmvc.model.Requirement;
@Service
public class CategoryService {
	@Autowired
	private CategoryDao categoryDao;
	
	public Iterable<Category> findAll() {
		return categoryDao.getCategories();
	}
	
	public Category getCategory(final String categoryId) {
		return categoryDao.getCategory(categoryId);
	}

	public List<Category> getCategories() {
		return categoryDao.getCategories();
	}

	public void addCategory(final Category category) {
		categoryDao.addCategory(category);
	}

	public int updateCategory( Category category) {
		return categoryDao.updateCategory(category);
	}

	public void deleteCategory(final String categoryId) {
		categoryDao.deleteCategory(categoryId);
	}
}

package com.roytuts.springmvc.controllers;

import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.SendFailedException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.roytuts.springmvc.model.Category;
import com.roytuts.springmvc.model.Requirement;
import com.roytuts.springmvc.service.CategoryService;

@Controller
@PropertySource(value = { "classpath:application.properties" })
// @RequestMapping("/category")
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	@Autowired
	private Environment environment;

	@RequestMapping("/category/{categoryId}")
	public String getCategory(@PathVariable String categoryId, HttpServletRequest request, ModelMap categoryModel) {
		List<Category> req = (List<Category>) categoryService.findAll();
		if (req != null) {
			Category category = categoryService.getCategory(categoryId);
			categoryModel.addAttribute("category", category);
			PagedListHolder pagedList = new PagedListHolder(req);
			int pageNo = ServletRequestUtils.getIntParameter(request, "p", 0);
			pagedList.setPage(pageNo);
			pagedList.setPageSize(3);
			categoryModel.put("pagedList", pagedList);
			return "Categorybyid";
		} else {
			categoryModel.addAttribute("msg", "Category added successfully");
			return "No Category is Found";
		}
	}

	@RequestMapping(value = { "", "/category", "category*", "view/*" }, method = RequestMethod.GET)
	public String getCategories(HttpServletRequest request, ModelMap categoryModel) {

		List<Category> category = categoryService.getCategories();
		PagedListHolder pagedListHolder = new PagedListHolder<>(category);
		int page = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedListHolder.setPage(page);
		pagedListHolder.setPageSize(3);
		categoryModel.put("pagedListHolder", pagedListHolder);
		categoryModel.addAttribute("category", category);
		return "Category";
	}

	@RequestMapping(value = "addCategory")
	public String addPage() {
		return "addCategory";
	}

	@RequestMapping(value = "/category/addCategory", method = RequestMethod.POST)
	public ModelAndView addCategory(@RequestParam(value = "teamName", required = true) String teamName,
			@RequestParam(value = "employeeId", required = true) String employeeId,
			@RequestParam(value = "department", required = true) String department,
			@RequestParam(value = "project", required = true) String project, ModelMap categoryModel) {
		Category category = new Category();

		/*
		 * if (employeeId.equals(categoryService.getCategory(employeeId))) {
		 * categoryModel.addAttribute("msg", "Category updated successfully");
		 * return new ModelAndView("addCategory"); } else {
		 */
		List<Category> cats = categoryService.getCategories();
		for (Category categories : cats) {

			String empId = categories.getEmployeeId();
			if (empId == employeeId) {
				categoryModel.addAttribute("msg", "Employee Id is already exists.");
				return new ModelAndView("redirect:/addCategory");
			}
			else{
				String categoryId = genarateJobCode(department, teamName);
				category.setCategoryId(categoryId);
				category.setDepartment(department);
				category.setTeamName(teamName);
				category.setProject(project);
				category.setEmployeeId(employeeId);
				categoryService.addCategory(category);
				categoryModel.addAttribute("msg", "Category added successfully");
				List<Category> categorylist = categoryService.getCategories();
				categoryModel.addAttribute("categorylist", categorylist);
				return new ModelAndView("redirect:/category");
			}
		}

		return null;
		// else{
		//
		// return new ModelAndView("addCategory");
		// }
	}
	// }

	private String genarateJobCode(String department, String Project) {

		Random rand = new Random();
		int rand_int1 = rand.nextInt(1000);
		StringBuilder categoryId = new StringBuilder();
		categoryId.append(Project).append("_").append(department).append("_").append(rand_int1);
		return categoryId.toString();

	}

	@RequestMapping(value = "updateCategory/{categoryId}", method = RequestMethod.GET)
	public ModelAndView updatePage(ModelAndView model, @PathVariable("categoryId") String categoryId)
			throws IOException {

		Category category = categoryService.getCategory(categoryId);
		model.addObject("category", category);
		model.setViewName("updateCategory");
		return model;
	}

	@RequestMapping(value = "/updateCategory", method = RequestMethod.POST)
	public ModelAndView updateCategory(@RequestParam(value = "categoryId") String categoryId,
			@RequestParam(value = "employeeId") String employeeId,
			@RequestParam(value = "department") String department, @RequestParam(value = "project") String project,
			@RequestParam(value = "teamName") String teamName, ModelAndView mv) {
		Category category = new Category();
		category.setCategoryId(categoryId);
		category.setEmployeeId(employeeId);
		category.setDepartment(department);
		category.setProject(project);
		category.setTeamName(teamName);
		int counter = categoryService.updateCategory(category);

		if (counter > 0) {
			mv.addObject("msg", "Category updated successfully");
		} else {

			mv.addObject("msg", "Failed to update Category");
		}
		mv.setViewName("updateCategory");
		return mv;
	}

	@RequestMapping(value = "deletecategory/{categoryId}", method = RequestMethod.GET)
	public String deleteCategory(@PathVariable("categoryId") String categoryId, ModelMap categoryModel) {
		categoryService.deleteCategory(categoryId);

		List<Category> category = categoryService.getCategories();
		categoryModel.addAttribute("category", category);
		categoryModel.addAttribute("msg", "Category deleted successfully");
		return "redirect:/category";
	}

	@RequestMapping("*")
	public String fallBackPage() {
		return "404";
	}

}

package com.roytuts.springmvc.controllers;

import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
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
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.roytuts.springmvc.model.Category;
import com.roytuts.springmvc.model.Requirement;
import com.roytuts.springmvc.service.CategoryService;
import com.roytuts.springmvc.service.RequirementService;

@Controller
@PropertySource(value = { "classpath:application.properties" })
public class RequirementController {

	@Autowired
	private RequirementService requirementservice;

	@Autowired
	private CategoryService categoryService;

	@Autowired
	private Environment environment;

	@RequestMapping("/requirement/{jobcode}") // by default Requestmethod is GET
	public String getRequirement(@PathVariable String jobcode, HttpServletRequest request, ModelMap requirementModel) {
		List<Requirement> req = (List<Requirement>) requirementservice.findAll();
		Requirement requirement = requirementservice.getRequirement(jobcode);
		requirementModel.addAttribute("requirement", requirement);
		PagedListHolder pagedList = new PagedListHolder(req);
		int pageNo = ServletRequestUtils.getIntParameter(request, "p", 0);
		pagedList.setPage(pageNo);
		pagedList.setPageSize(3);
		requirementModel.put("pagedList", pagedList);
		return "requirement";
	}

	@RequestMapping(value = "/requirements", method = RequestMethod.GET)
	public String getTeachers(ModelMap requirementModel) {
		List<Requirement> requirements = requirementservice.getRequirements();
		requirementModel.addAttribute("requirements", requirements);
		return "requirements";
	}


	
	
	@RequestMapping(value = "addRequirement")
	public String addPage(ModelMap requirementModel) {
		List<Category> categories = (List<Category>) categoryService.getCategories();
		requirementModel.addAttribute("requirements", categories);
		return "add";
	}

	@RequestMapping(value = "/addRequirement", method = RequestMethod.POST)
	public String addRequirement(@RequestParam(value = "categoryId", required = true) String categoryId,
			@RequestParam(value = "experiencelevel", required = true) String experiencelevel,
			@RequestParam(value = "skillset", required = true) String skillset,
			@RequestParam(value = "technology", required = true) String technology,
			@RequestParam(value = "noofPositions", required = true) String noofPositions,
			@RequestParam(value = "department", required = true) String department,
			@RequestParam(value = "uploadedby", required = true) String uploadedby, 
			/*@RequestParam(value = "updatedOn", required = true) Date updatedOn,*/
			ModelMap requirementModel) {
		Requirement requirement = new Requirement();
		String jobCode = genarateJobCode(technology, department);
		
		Calendar calendar = Calendar.getInstance();
		Date updatedOn =  new java.sql.Date(calendar.getTime().getTime());
		requirement.setJobCode(jobCode);
		requirement.setExperiencelevel(experiencelevel);
		requirement.setSkillset(skillset);
		requirement.setTechnology(technology);
		requirement.setNoofPositions(noofPositions);
		requirement.setUploadedby(uploadedby);
		requirement.setDepartment(department);
		requirement.setCategoryId(categoryId);
		requirement.setUpdatedOn(updatedOn);
	
		requirementservice.addRequirement(requirement);
		String email = environment.getRequiredProperty("talentteam.email");
		String from = environment.getProperty("talentprocess.from");
		String to = environment.getProperty("talentprocess.to");
		String host = environment.getProperty("smtp.gmail.com");

		try {
			// sendEmail(email);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		requirementModel.addAttribute("msg", "Requirement added successfully");
		List<Requirement> requirements = requirementservice.getRequirements();
		requirementModel.addAttribute("requirements", requirements);
		return "redirect:/requirements";
	}
	
	
	
	
	
	private void sendEmail(String pEmail) throws Exception {

		final String from = "raghu88478@gmail.com"; // change accordingly
		final String password = "raghuvardhantalari"; // change accordingly
		String to = "prasannamay3@gmail.com"; // change accordingly
		String host = "smtp.gmail.com"; // or IP address
		// Get system properties
		Properties properties = System.getProperties();

		// Setup mail server
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", 587);
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.user", from);
		properties.put("mail.password", password);

		// Get the default Session object.
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		};
		Session session = Session.getInstance(properties, auth);

		try {
			// Create a default MimeMessage object.
			MimeMessage message = new MimeMessage(session);

			// Set From: header field of the header.
			message.setFrom(new InternetAddress(from));

			// Set To: header field of the header.
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(pEmail));

			// Set Subject: header field
			message.setSubject("These are the requirement details!");

			// Now set the actual message
			message.setText("Please find the requirement details");

			// Send message
			Transport.send(message);
			System.out.println("Sent message successfully....");
		} catch (SendFailedException mex) {
			mex.printStackTrace();
		}
	}

	private String genarateJobCode(String technology, String department) {

		Random rand = new Random();
		int rand_int1 = rand.nextInt(1000);
		StringBuilder jobcode = new StringBuilder();
		jobcode.append(technology).append("_").append(department).append("_").append(rand_int1);
		return jobcode.toString();

	}

	
	
	
	
	@RequestMapping(value = "update/requirement/{jobcode}", method = RequestMethod.GET)
	public String updatePage(@PathVariable("jobcode") String jobcode, ModelMap requirementModel) {
		System.out.println("----------------HI---------------------");
		requirementModel.addAttribute("jobcode", jobcode);
		Requirement requirement = requirementservice.getRequirement(jobcode);
		requirementModel.addAttribute("requirement", requirement);
		return "update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateRequirement(
			//@RequestParam(value = "categoryId", required = true) String categoryId,
			@RequestParam(value = "jobCode", required = true) String jobCode,
			@RequestParam(value = "experiencelevel", required = true) String experiencelevel,
			@RequestParam(value = " skillset" , required = true) String  skillset,
			@RequestParam(value = "noofPositions", required = true) String noofPositions,
			@RequestParam(value = "technology", required = true) String technology,
			@RequestParam(value = "status", required = true) String status,
			@RequestParam(value = "approvedBy", required = true) String approvedBy,
			@RequestParam(value = "department", required = true) String department,
			//@RequestParam(value = "uploadedby", required = true) String uploadedby, 
			ModelMap requirementModel) {
	
		Requirement requirement = new Requirement();
		requirement.setJobCode(jobCode);
		requirement.setExperiencelevel(experiencelevel);
		requirement.setSkillset( skillset);
		requirement.setDepartment(department);
		requirement.setTechnology(technology);
		requirement.setNoofPositions(noofPositions);
		requirement.setApprovedBy(approvedBy);
		//requirement.setCategoryId(categoryId);
		requirement.setStatus(status);
		//requirement.setUploadedby(uploadedby);
		requirementservice.updateRequirement(requirement);
		List<Requirement> requirements = requirementservice.getRequirements();
		requirementModel.addAttribute("requirements", requirements);
		requirementModel.addAttribute("msg", "Requirement updated successfully");
		return "redirect:requirements";
	}

	@RequestMapping(value = "delete/{jobCode}", method = RequestMethod.GET)
	public String deleteRequirement(@PathVariable("jobCode") String jobcode, ModelMap requirementModel) {
		requirementservice.deleteRequirement(jobcode);
		List<Requirement> requirements = requirementservice.getRequirements();
		requirementModel.addAttribute("requirements", requirements);
		requirementModel.addAttribute("msg", "Requirement deleted successfully");
		return "requirements";
	}

	@ModelAttribute("departmentList")
	public Map<String, String> getDepartmentList() {
		Map<String, String> departmentList = new HashMap<String, String>();
		departmentList.put("IT", "Information Technology");
		departmentList.put("NIT", "Non IT");
		return departmentList;
	}
}
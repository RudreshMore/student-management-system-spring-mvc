package in.rudresh.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import in.rudresh.entity.Student;
import in.rudresh.service.StudentService;
import jakarta.validation.Valid;

@Controller
public class StudentController {

	@Autowired
	private StudentService service;

	// CREATE + FORM
	@GetMapping("/register")
	public String form(Model model) {
		model.addAttribute("student", new Student());
		return "register";
	}

	// SAVE + UPDATE
	@PostMapping("/save")
	public String save(@Valid @ModelAttribute("student") Student student, BindingResult result, Model model) {

		if (result.hasErrors()) {
			Map<String, String> errors = new HashMap<>();
			result.getFieldErrors().forEach(e -> errors.put(e.getField(), e.getDefaultMessage()));
			model.addAttribute("errors", errors);
			return "register";
		}

		service.save(student);
		return "redirect:/students";
	}
	


	// READ
	@GetMapping("/students")
	public String list(Model model) {
		model.addAttribute("students", service.getAll());
		return "list";
	}

	// EDIT
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable Integer id, Model model) {
		model.addAttribute("student", service.getById(id));
		return "register";
	}

	// DELETE
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Integer id) {
		service.delete(id);
		return "redirect:/students";
	}
}

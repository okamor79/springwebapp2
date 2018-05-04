package edu.logos.spring.controller;

import edu.logos.spring.entity.Student;
import edu.logos.spring.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired private StudentService studentService;

    @GetMapping
    public String studentPanel() {
        return "student/panel";
    }

    @GetMapping("/add")
    public String showAddStudentForm(){
        return "student/add";
    }

    @PostMapping("/save")
    public String saveStudent(
            @RequestParam("firstname") String firstName,
            @RequestParam("lastname") String lastName,
            @RequestParam("age") String age
    ) {
        System.out.println(firstName + " " + lastName + " " + age);

        Student student = new Student();
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setAge(Integer.valueOf(age));
        studentService.saveStrudent(student);

        return "redirect:/student";
    }

    @GetMapping("/students")
    public String showStudents(Model model) {
        model.addAttribute("studentList", studentService.findAllStudents());
        return "student/list";
    }
}

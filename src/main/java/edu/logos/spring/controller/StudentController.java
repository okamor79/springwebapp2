package edu.logos.spring.controller;

import edu.logos.spring.entity.Student;
import edu.logos.spring.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/student")
@SessionAttributes("editStudentModel")
public class StudentController {

    @Autowired private StudentService studentService;

    @GetMapping
    public String studentPanel() {
        return "redirect:/student/students";
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

    //-- Spring form

    @GetMapping("/add-spring-form")
    public String showAddStudentFromSpring(Model model){
        model.addAttribute("studentModel", new Student());

        List<String> progLang = new ArrayList<>();
        progLang.add("Java");
        progLang.add("Python");
        progLang.add("PHP");
        progLang.add("C++");
        progLang.add("Ruby");
        progLang.add("Java");

        model.addAttribute("programminLang", progLang);

        List<String> countryList = new ArrayList<>();

        countryList.add("Ukraine");
        countryList.add("Poland");
        countryList.add("Gernamy");
        countryList.add("Spain");

        model.addAttribute("countryListModel", countryList);

        return "student/add-student-spring";

    }

    @PostMapping("/add-spring-form")
    public String saveStudentFormSpring(
            @ModelAttribute("studentModel") Student student
    ) {
        studentService.saveStrudent(student);

        return "redirect:/student/students";
    }

    @GetMapping("/edit/{studentID}")
    public String editStudent(Model model, @PathVariable("studentID") int id) {
        Student student = studentService.findStudentByID(id);

        model.addAttribute("editStudentModel", student);

        return "student/edit";

    }

    @PostMapping("/edit")
    public String SaveEditedStudent(@ModelAttribute("editStudentModel") Student student) {
        studentService.saveStrudent(student);
        return "redirect:/student/students";
    }
}

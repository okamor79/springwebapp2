package edu.logos.spring.service;

import edu.logos.spring.entity.Student;

import java.util.List;

public interface StudentService {
    void saveStrudent(Student student);

    Student findStudentByID(int id);

    List<Student> findAllStudents();

}

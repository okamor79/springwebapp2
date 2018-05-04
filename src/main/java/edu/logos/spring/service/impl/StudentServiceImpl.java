package edu.logos.spring.service.impl;

import edu.logos.spring.entity.Student;
import edu.logos.spring.repository.StudentRepository;
import edu.logos.spring.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired private StudentRepository studentRepository;
    @Override
    public void saveStrudent(Student student) {
        studentRepository.save(student);
    }

    @Override
    public Student findStudentByID(int id) {
        return studentRepository.getOne(id);
    }

    @Override
    public List<Student> findAllStudents() {
        return studentRepository.findAll();
    }
}

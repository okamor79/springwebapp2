package edu.logos.spring.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "student")
@Getter @Setter @NoArgsConstructor
public class Student extends BaseEntity{

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    private int age;

    @Column(name = "lang_prog")
    private String progLang;

    private String country;

    private String[] operationSystem;
}

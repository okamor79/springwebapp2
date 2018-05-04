package edu.logos.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BaseController {

    @GetMapping("/")
    public String showHome() {
        return "home";
    }

    @GetMapping("/profile")
    public String showProfile() {
        return "profile";
    }
}

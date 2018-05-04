package edu.logos.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @GetMapping("/register")
    public String showRegistration(Model model) {
        model.addAttribute("name", "Kva-kVa");
        return "register";
    }
}

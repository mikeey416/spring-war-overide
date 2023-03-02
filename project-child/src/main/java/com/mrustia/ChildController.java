package com.mrustia;


import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
public class ChildController extends MasterController {

    @ModelAttribute("message")
    public String message() {
        return "Child message";
    }

    @GetMapping(path = "main.html")
    public ModelAndView main() {
        return new ModelAndView("main");
    }
}

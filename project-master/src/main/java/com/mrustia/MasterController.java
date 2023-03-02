package com.mrustia;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

@Controller
@OverridenController
public class MasterController {

    @ModelAttribute("message")
    public String message() {
        return "Parent Message";
    }

    @GetMapping(path = "main.html")
    public ModelAndView main() {
        return new ModelAndView("main");
    }
}

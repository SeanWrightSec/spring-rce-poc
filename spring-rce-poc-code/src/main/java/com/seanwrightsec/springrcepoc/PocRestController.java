package com.seanwrightsec.springrcepoc;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PocRestController {
    
    @PostMapping("/rest-poc")
    public String restPoc(@ModelAttribute("model") PocModel model) {
        return "Hello World!";
    }

}

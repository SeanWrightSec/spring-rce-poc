package com.seanwrightsec.springrcepoc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PocController {

	@RequestMapping("/poc")
	public String greeting(PocModel model) {
		return "poc";
	}

}

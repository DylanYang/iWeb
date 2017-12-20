package com.springapp.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/")
public class HelloController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");
		return "index";
	}
	//get response by user encode
	@RequestMapping(value = "showCodeResult",method = RequestMethod.POST)
	public String popDoc(ModelMap model,@RequestParam(value = "txtDoc",required = true) String txtDoc,
						HttpServletRequest req, HttpServletResponse resp)throws SecurityException,IOException{
		model.addAttribute("message", txtDoc);
		//print result to Output window
		System.out.println(txtDoc);
		return "codeRst";
	}
}
package controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import domain.User;

@Controller
public class formController {
	
	
	@RequestMapping(value="/form", method=RequestMethod.GET)
	public String getForm(@ModelAttribute("user")User user, Model model){
		
		
		return "form";
	}
	
	
	@RequestMapping(value="/form", method=RequestMethod.POST)
	public String formSubmit( @Valid User user,  BindingResult result,Model model){
		
		System.out.println(user.getName());
		if (result.hasErrors()) {
			System.out.println("--------------------------");
			return "form";
			}
		model.addAttribute("user", user);

		System.out.println("*******************");
		return "data";
	}
	
	
	@RequestMapping(value="/data", method=RequestMethod.GET)
	public String getData(){
		
		//System.out.println(user.getName());
		return "data";
	}
	
	
	

}

package com.sirketadi.calisma;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class GirisController {
	

	@RequestMapping(value = "/giris", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "admin/giris";
	}
	
}
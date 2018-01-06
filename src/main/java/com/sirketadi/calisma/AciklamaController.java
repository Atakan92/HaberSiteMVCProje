package com.sirketadi.calisma;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import Utils.DB;

@Controller
public class AciklamaController {
	@RequestMapping(value = "aciklama-/{id}", method = RequestMethod.GET)
	public String aciklama(Model model,@PathVariable String id) {
		
		String detay="";
		try {
            String q = "CALL DetayGetir(?)";
            PreparedStatement pr = new DB().preBaglan(q);
            
            pr.setInt(1,Integer.valueOf(id));
          
            ResultSet rs=pr.executeQuery();
            while(rs.next()){
              detay=rs.getString("haber_detay");
            	
            }
          
        } catch (Exception e) {
            System.err.println("Hata : " + e);
        }
		
		model.addAttribute("detay",detay);
		return "aciklama";
	}
	}
	



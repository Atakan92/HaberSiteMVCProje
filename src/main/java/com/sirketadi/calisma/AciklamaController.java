package com.sirketadi.calisma;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Utils.DB;

@Controller
public class AciklamaController {
	@RequestMapping(value = "aciklama-/{id}", method = RequestMethod.GET)
	public String aciklama(Model model,@PathVariable String id) {
		
		
		model.addAttribute("id",id);
		return "redirect:/aciklama";
	}
	
	@RequestMapping(value = "aciklama", method = RequestMethod.GET)
	public String aciklamaDevam(Model model,@RequestParam String id) {
		
		String detay="";
		String klasor="";
		String haberbaslik="";
		String haberurl="";
		try {
            String q = "CALL DetayGetir(?)";
            PreparedStatement pr = new DB().preBaglan(q);
            
            pr.setInt(1,Integer.valueOf(id));
          
            ResultSet rs=pr.executeQuery();
            while(rs.next()){
              detay=rs.getString("haber_detay");
              klasor=rs.getString("klasor");
              haberbaslik=rs.getString("haber_baslik");
              haberurl=rs.getString("adi");
              
            
            }
          
        } catch (Exception e) {
            System.err.println("Hata : " + e);
        }
		model.addAttribute("klasor",klasor);
		model.addAttribute("haberurl",haberurl);
		model.addAttribute("haberbaslik",haberbaslik);
		model.addAttribute("detay",detay);
		return "admin/aciklama";
	}
	
	
	
	
	
	
	}
	



package com.sirketadi.calisma;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestParam;
=======

>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac

import Utils.DB;

@Controller
public class AciklamaController {
	@RequestMapping(value = "aciklama-/{id}", method = RequestMethod.GET)
	public String aciklama(Model model,@PathVariable String id) {
		
<<<<<<< HEAD
		
		model.addAttribute("id",id);
		return "redirect:/aciklama";
	}
	
	@RequestMapping(value = "aciklama", method = RequestMethod.GET)
	public String aciklamaDevam(Model model,@RequestParam String id) {
		
		String detay="";
		String klasor="";
		String haberbaslik="";
		String haberurl="";
=======
		String detay="";
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac
		try {
            String q = "CALL DetayGetir(?)";
            PreparedStatement pr = new DB().preBaglan(q);
            
            pr.setInt(1,Integer.valueOf(id));
          
            ResultSet rs=pr.executeQuery();
            while(rs.next()){
              detay=rs.getString("haber_detay");
<<<<<<< HEAD
              klasor=rs.getString("klasor");
              haberbaslik=rs.getString("haber_baslik");
              haberurl=rs.getString("adi");
              
            
=======
            	
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac
            }
          
        } catch (Exception e) {
            System.err.println("Hata : " + e);
        }
<<<<<<< HEAD
		model.addAttribute("klasor",klasor);
		model.addAttribute("haberurl",haberurl);
		model.addAttribute("haberbaslik",haberbaslik);
		model.addAttribute("detay",detay);
		return "admin/aciklama";
	}
	
	
	
	
	
	
=======
		
		model.addAttribute("detay",detay);
		return "aciklama";
	}
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac
	}
	



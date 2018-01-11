package com.sirketadi.calisma;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Properties.Haber;
import Utils.DB;
@Controller
public class SporController {
	
	/*@RequestMapping(value = "spor", method = RequestMethod.GET)
	public String spor(Model model) {
		List<Haber> spl=new ArrayList<Haber>();
		
		 try {
	            String q = "CALL HaberGetir(?,?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,"spor");
	            pr.setInt(2, 9);
	            
	            ResultSet rs=pr.executeQuery();
	            while(rs.next()){
	            	Haber gelenHaber=new Haber();
	            	gelenHaber.setHaberid(rs.getString("id_haber"));
	            	gelenHaber.setHaberBaslik(rs.getString("haber_baslik"));
	            	gelenHaber.setHaberKlasor(rs.getString("klasor"));
	            	gelenHaber.setHaberUrl(rs.getString("resim_url"));
	            	spl.add(gelenHaber);
	            }
	          
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		
		
		return "admin/spor";
	}*/

}

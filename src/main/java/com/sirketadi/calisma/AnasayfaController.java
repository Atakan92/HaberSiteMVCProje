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
import Properties.Yazar;
import Properties.YazarProfilProseEnum;
import Utils.DB;

@Controller
public class AnasayfaController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String anasayfa(Model model) {
		List<Haber> hl=new ArrayList<Haber>();
		List<Haber> sl=new ArrayList<Haber>();
		List<Yazar> yl=new ArrayList<Yazar>();
		
		 try {
	            String q = "CALL HaberGetir(?,?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,"sondakika");
	            pr.setInt(2, 7);
	            
	            ResultSet rs=pr.executeQuery();
	            while(rs.next()){
	            	Haber gelenHaber=new Haber();
	            	gelenHaber.setHaberid(rs.getString("id_haber"));
	            	gelenHaber.setHaberBaslik(rs.getString("haber_baslik"));
	            	gelenHaber.setHaberKlasor(rs.getString("klasor"));
	            	gelenHaber.setHaberUrl(rs.getString("resim_url"));
	            	sl.add(gelenHaber);
	            }
	          
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		 try {
	            String q = "CALL HaberGetir(?,?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,"siyaset");
	            pr.setInt(2, 3);
	            
	            ResultSet rs=pr.executeQuery();
	            while(rs.next()){
	            	Haber gelenHaber=new Haber();
	            	gelenHaber.setHaberid(rs.getString("id_haber"));
	            	gelenHaber.setHaberBaslik(rs.getString("haber_baslik"));
	            	gelenHaber.setHaberKlasor(rs.getString("klasor"));
	            	gelenHaber.setHaberUrl(rs.getString("resim_url"));
	            	hl.add(gelenHaber);
	            }
	          
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		 try {
	            String q = "CALL HaberGetir(?,?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,"saglik");
	            pr.setInt(2, 3);
	            
	            ResultSet rs=pr.executeQuery();
	            while(rs.next()){
	            	Haber gelenHaber=new Haber();
	            	gelenHaber.setHaberid(rs.getString("id_haber"));
	            	gelenHaber.setHaberBaslik(rs.getString("haber_baslik"));
	            	gelenHaber.setHaberKlasor(rs.getString("klasor"));
	            	gelenHaber.setHaberUrl(rs.getString("resim_url"));
	            	hl.add(gelenHaber);
	            }
	          
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		 try {
	            String q = "CALL HaberGetir(?,?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,"ekonomi");
	            pr.setInt(2, 3);
	            
	            ResultSet rs=pr.executeQuery();
	            while(rs.next()){
	            	Haber gelenHaber=new Haber();
	            	gelenHaber.setHaberid(rs.getString("id_haber"));
	            	gelenHaber.setHaberBaslik(rs.getString("haber_baslik"));
	            	gelenHaber.setHaberKlasor(rs.getString("klasor"));
	            	gelenHaber.setHaberUrl(rs.getString("resim_url"));
	            	hl.add(gelenHaber);
	            }
	          
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		 try {
	            String q = "CALL HaberGetir(?,?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,"spor");
	            pr.setInt(2, 3);
	            
	            ResultSet rs=pr.executeQuery();
	            while(rs.next()){
	            	Haber gelenHaber=new Haber();
	            	gelenHaber.setHaberid(rs.getString("id_haber"));
	            	gelenHaber.setHaberBaslik(rs.getString("haber_baslik"));
	            	gelenHaber.setHaberKlasor(rs.getString("klasor"));
	            	gelenHaber.setHaberUrl(rs.getString("resim_url"));
	            	hl.add(gelenHaber);
	            }
	          
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		 
			
			 try {
		            String q = "CALL YazarProfilYazi";
		            PreparedStatement pr = new DB().preBaglan(q);
		        
		            
		            ResultSet rs=pr.executeQuery();
		            while(rs.next()){
		            	Yazar yazar=new Yazar();
		            	yazar.setYazarId(rs.getString(YazarProfilProseEnum.yazarid+""));
		            	yazar.setYazarAdi(rs.getString(YazarProfilProseEnum.yazaradi+""));
		            	yazar.setYazarGrup(rs.getString(YazarProfilProseEnum.yazar_grup+""));
		            	yazar.setYazarResimUrl(rs.getString(YazarProfilProseEnum.yazarresimurl+""));
		            	yazar.setYazarResimKlasor(rs.getString(YazarProfilProseEnum.yazarklasor+""));
		            	yazar.setYazarYaziId(rs.getString(YazarProfilProseEnum.yaziid+""));
		            	
		            	yl.add(yazar);
		            }
		          
		        } catch (Exception e) {
		            System.err.println("Hata : " + e);
		        }
	    for (Yazar yazar : yl) {
			System.out.println(yazar.getYazarAdi());
		}
	    model.addAttribute("yl",yl);
		model.addAttribute("sl",sl);
		model.addAttribute("hl",hl);
		return "anasayfa";
	}
	
	
}

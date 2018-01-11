package com.sirketadi.calisma;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
<<<<<<< HEAD
import java.util.Locale;
=======
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Properties.Haber;
import Properties.Yazar;
import Properties.YazarProfilProseEnum;
import Utils.DB;

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
	
<<<<<<< HEAD
	@RequestMapping(value = "/orneksayfa", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "admin/orneksayfa";
	}
	
	@RequestMapping(value = "yazaricerik-/{idyazi}", method = RequestMethod.GET)
	public String yazaricerik(@PathVariable String idyazi, Model model) {
		model.addAttribute("idyazi",idyazi);
		return "redirect:/yazaryazi";
	}
	
	@RequestMapping(value = "yazaryazi", method = RequestMethod.GET)
	public String yazaricerikici(@RequestParam String idyazi, Model model) {
		String yazi="";
		String yazisahip="";
		 try {
	            String q = "CALL SecilenYazi(?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setInt(1, Integer.valueOf(idyazi));
	            
	            ResultSet rs=pr.executeQuery();
	            while(rs.next()){
	            	yazi=rs.getString("yazi_detay");
//	            	yazisahip=rs.getString("id_yazi");
	            	
	            }
	          
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		
		
		model.addAttribute("yazisahip",yazisahip);
		model.addAttribute("yazi",yazi);
		return "admin/yazaricerik";
	}
	
	
	
	@RequestMapping(value = "spor", method = RequestMethod.GET)
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
		for (Haber haber : spl) {
			System.out.println(haber.getHaberUrl());
			
		}
		model.addAttribute("spl",spl);
		return "admin/spor";
	}
	
	@RequestMapping(value = "siyaset", method = RequestMethod.GET)
	public String siyaset(Model model) {
		List<Haber> syl=new ArrayList<Haber>();
		
		 try {
	            String q = "CALL HaberGetir(?,?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,"siyaset");
	            pr.setInt(2, 9);
	            
	            ResultSet rs=pr.executeQuery();
	            while(rs.next()){
	            	Haber gelenHaber=new Haber();
	            	gelenHaber.setHaberid(rs.getString("id_haber"));
	            	gelenHaber.setHaberBaslik(rs.getString("haber_baslik"));
	            	gelenHaber.setHaberKlasor(rs.getString("klasor"));
	            	gelenHaber.setHaberUrl(rs.getString("resim_url"));
	            	syl.add(gelenHaber);
	            }
	          
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		for (Haber haber : syl) {
			System.out.println(haber.getHaberUrl());
			
		}
		model.addAttribute("syl",syl);
		return "admin/siyaset";
	}
	
	@RequestMapping(value = "saglik", method = RequestMethod.GET)
	public String saglik(Model model) {
		List<Haber> sgl=new ArrayList<Haber>();
		
		 try {
	            String q = "CALL HaberGetir(?,?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,"saglik");
	            pr.setInt(2, 9);
	            
	            ResultSet rs=pr.executeQuery();
	            while(rs.next()){
	            	Haber gelenHaber=new Haber();
	            	gelenHaber.setHaberid(rs.getString("id_haber"));
	            	gelenHaber.setHaberBaslik(rs.getString("haber_baslik"));
	            	gelenHaber.setHaberKlasor(rs.getString("klasor"));
	            	gelenHaber.setHaberUrl(rs.getString("resim_url"));
	            	sgl.add(gelenHaber);
	            }
	          
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		for (Haber haber : sgl) {
			System.out.println(haber.getHaberUrl());
			
		}
		model.addAttribute("sgl",sgl);
		return "admin/saglik";
	}
	
	@RequestMapping(value = "ekonomi", method = RequestMethod.GET)
	public String ekonomi(Model model) {
		List<Haber> ekl=new ArrayList<Haber>();
		
		 try {
	            String q = "CALL HaberGetir(?,?)";
	            PreparedStatement pr = new DB().preBaglan(q);
	            pr.setString(1,"ekonomi");
	            pr.setInt(2, 9);
	            
	            ResultSet rs=pr.executeQuery();
	            while(rs.next()){
	            	Haber gelenHaber=new Haber();
	            	gelenHaber.setHaberid(rs.getString("id_haber"));
	            	gelenHaber.setHaberBaslik(rs.getString("haber_baslik"));
	            	gelenHaber.setHaberKlasor(rs.getString("klasor"));
	            	gelenHaber.setHaberUrl(rs.getString("resim_url"));
	            	ekl.add(gelenHaber);
	            }
	          
	        } catch (Exception e) {
	            System.err.println("Hata : " + e);
	        }
		for (Haber haber : ekl) {
			System.out.println(haber.getHaberUrl());
			
		}
		model.addAttribute("ekl",ekl);
		return "admin/ekonomi";
	}
	
	
=======
>>>>>>> beca8ed2ffaae79defa96dc0bdbdaacff7db28ac
	
}

package com.vesmax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vesmax.dao.ImageDao;
import com.vesmax.model.Images;
import com.vesmax.security.UploadConfig;

@Controller
@RequestMapping(value="/admin/")
public class ImageController {
		
	@Autowired
	ImageDao imageDao;
	@Autowired
	UploadConfig UploadConfig;
	
	@GetMapping(value ="image-list")
	public String List(Model model) {
		model.addAttribute("image", imageDao.list());
		return "admin/image/List";
	}
	
	@PostMapping(value="createImage")
	public String New(ModelMap model,
			@RequestParam("FieldTitle") String title,
			@RequestParam("FieldContent") String content,
			@RequestParam("FieldDescription") String description,
			@RequestParam("FieldPhoto") MultipartFile image
			) {
		System.out.println("-----"+ title);
		System.out.println("-----"+ content);
		System.out.println("-----"+ description);
		System.out.println("-----"+ image);
		String photo = UploadConfig.uploadImage(model, image);

		imageDao.Create(new Images(photo, title, content, description));

		
		return "redirect: /Spa_V1/admin/image-list";
	}
	
	@GetMapping(value = "/image-delete/{id}")
	public String Delete(Model model, @PathVariable("id") int Image_ID) {
		imageDao.Delete(Image_ID);
		model.addAttribute("image", imageDao.list());
		return "redirect: /Spa_V1/admin/image-list";
	}
	

}

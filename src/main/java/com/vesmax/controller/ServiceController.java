package com.vesmax.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.vesmax.model.Services;
import com.vesmax.security.UploadConfig;
import com.vesmax.service.ServiceService;
import com.vesmax.service.ServiceServiceimpl;

@Controller
@RequestMapping(value = "/admin/")
public class ServiceController {
	ServiceService serviceService = new ServiceServiceimpl();
	@Autowired
	ServletContext ctx;
	@Autowired
	UploadConfig UploadConfig;

	@GetMapping("service")
	public String List(Model model) {
		model.addAttribute("service", serviceService.list());
		return "admin/service/List";
	}

	@GetMapping("service-add")
	public String addService(Model model) {
		return "admin/service/addService";
	}

	@PostMapping("service-process")
	public String addServices(ModelMap model, @RequestParam("photo2") MultipartFile image,
			@RequestParam("name") String name, @RequestParam("price") float price) {
		String photo = UploadConfig.uploadImage(model, image);
		if (serviceService.Create(new Services(name, price, photo)) == true) {
			model.addAttribute("services", serviceService.list());
			return "redirect: service";
		} else {
			model.addAttribute("error", "Thêm phòng ban thất bại");
			return "redirect: service-add";
		}
	}

	@GetMapping(value = "/service-delete/{id}")
	public String Delete(Model model, @PathVariable("id") int serviceId) {
		Services services = serviceService.findById(serviceId);
		serviceService.Delete(services);
		model.addAttribute("service", serviceService.list());

		return "redirect: /Spa_V1/admin/service	";
	}

	@GetMapping(value = "/service-update/{id}")
	public String update(Model model, @PathVariable("id") int serviceId) {
		Services services = serviceService.findById(serviceId);
		model.addAttribute("service", services);
		System.out.println("hihihihihihi");
		return "admin/service/update";
	}

	@RequestMapping(value = "service-update2", method = RequestMethod.POST)
	public String update2(ModelMap model, @RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("photo2") MultipartFile image, @RequestParam("price") float price) {
		String photo = UploadConfig.uploadImage(model, image);
		if (serviceService.Update(new Services(id, name, price, photo)) == true) {
			System.out.println("hahahahahaah");
			model.addAttribute("services", serviceService.list());
			return "redirect: /Spa_V1/admin/service";
		} else {
			model.addAttribute("error", "Thêm phòng ban thất bại");
			return "redirect: service-add";
		}
	}

	// public String uploadImage(ModelMap map, MultipartFile image) {
	// if (image.isEmpty()) {
	// System.out.println("File error");
	// return "";
	// } else {
	// try {
	// String path = ctx.getRealPath("/resources/assets/img/") +
	// image.getOriginalFilename();
	// System.out.println("do upload"+path);
	// image.transferTo(new File(path));
	// return image.getOriginalFilename();
	// } catch (Exception e) {
	// System.out.println("Loi: " + e);
	// return "";
	// }
	// }
	// }
}

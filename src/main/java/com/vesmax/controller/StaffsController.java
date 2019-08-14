package com.vesmax.controller;

import java.io.File;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Date;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.Map;
import java.util.Set;

import javax.servlet.Filter;
import javax.servlet.FilterRegistration;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;
import javax.servlet.SessionCookieConfig;
import javax.servlet.SessionTrackingMode;
import javax.servlet.FilterRegistration.Dynamic;
import javax.servlet.descriptor.JspConfigDescriptor;

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
import com.vesmax.model.Staffs;
import com.vesmax.service.StaffService;
import com.vesmax.service.StaffServiceimpl;

@Controller
@RequestMapping(value = "/admin/")
public class StaffsController {
	StaffService staffService = new StaffServiceimpl();
ServletContext context = new ServletContext() {
		
		@Override
		public void setSessionTrackingModes(Set<SessionTrackingMode> sessionTrackingModes) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public boolean setInitParameter(String name, String value) {
			// TODO Auto-generated method stub
			return false;
		}
		
		@Override
		public void setAttribute(String name, Object object) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void removeAttribute(String name) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void log(String message, Throwable throwable) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void log(Exception exception, String msg) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void log(String msg) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public SessionCookieConfig getSessionCookieConfig() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Enumeration<Servlet> getServlets() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Map<String, ? extends ServletRegistration> getServletRegistrations() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public ServletRegistration getServletRegistration(String servletName) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Enumeration<String> getServletNames() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public String getServletContextName() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Servlet getServlet(String name) throws ServletException {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public String getServerInfo() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Set<String> getResourcePaths(String path) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public InputStream getResourceAsStream(String path) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public URL getResource(String path) throws MalformedURLException {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public RequestDispatcher getRequestDispatcher(String path) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public String getRealPath(String path) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public RequestDispatcher getNamedDispatcher(String name) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public int getMinorVersion() {
			// TODO Auto-generated method stub
			return 0;
		}
		
		@Override
		public String getMimeType(String file) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public int getMajorVersion() {
			// TODO Auto-generated method stub
			return 0;
		}
		
		@Override
		public JspConfigDescriptor getJspConfigDescriptor() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Enumeration<String> getInitParameterNames() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public String getInitParameter(String name) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Map<String, ? extends FilterRegistration> getFilterRegistrations() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public FilterRegistration getFilterRegistration(String filterName) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Set<SessionTrackingMode> getEffectiveSessionTrackingModes() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public int getEffectiveMinorVersion() {
			// TODO Auto-generated method stub
			return 0;
		}
		
		@Override
		public int getEffectiveMajorVersion() {
			// TODO Auto-generated method stub
			return 0;
		}
		
		@Override
		public Set<SessionTrackingMode> getDefaultSessionTrackingModes() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public String getContextPath() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public ServletContext getContext(String uripath) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public ClassLoader getClassLoader() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Enumeration<String> getAttributeNames() {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Object getAttribute(String name) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public void declareRoles(String... roleNames) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public <T extends Servlet> T createServlet(Class<T> clazz) throws ServletException {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public <T extends EventListener> T createListener(Class<T> clazz) throws ServletException {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public <T extends Filter> T createFilter(Class<T> clazz) throws ServletException {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public javax.servlet.ServletRegistration.Dynamic addServlet(String servletName,
				Class<? extends Servlet> servletClass) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public javax.servlet.ServletRegistration.Dynamic addServlet(String servletName, Servlet servlet) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public javax.servlet.ServletRegistration.Dynamic addServlet(String servletName, String className) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public void addListener(Class<? extends EventListener> listenerClass) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public <T extends EventListener> void addListener(T t) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void addListener(String className) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public Dynamic addFilter(String filterName, Class<? extends Filter> filterClass) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Dynamic addFilter(String filterName, Filter filter) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public Dynamic addFilter(String filterName, String className) {
			// TODO Auto-generated method stub
			return null;
		}
	};

	@GetMapping("staffs")
	public String List(Model model) {
		model.addAttribute("staffs", staffService.list());
		return "admin/staffs/List";
	}

	@GetMapping("staffs-add")
	public String addService(Model model) {
		return "admin/staffs/addStaffs";
	}

	@PostMapping("add-staffs")
	public String addServices(ModelMap model,@RequestParam("photo") MultipartFile image, @RequestParam("name") String name, @RequestParam("gender") boolean gender,
			@RequestParam("birthday") Date birthday,
			@RequestParam("email") String email, @RequestParam("phone") String phone,
			@RequestParam("salary") int salary) {
		System.out.println(name);
		String photo = uploadImage(model, image);
		if (staffService.Create(new Staffs(name, gender, birthday, photo, email, phone, salary)) == true) {
			model.addAttribute("services", staffService.list());
			return "redirect: staffs";
		} else {
			model.addAttribute("error", "Thêm phòng ban thất bại");
			return "redirect: staffs-add";
		}
	}

	@GetMapping(value = "/staffs-delete/{id}")
	public String Delete(Model model, @PathVariable("id") int staffsId) {
		Staffs staffs = staffService.findById(staffsId);
		staffService.Delete(staffs);
		model.addAttribute("staffs", staffService.list());

		return "redirect: /Spa_V1/admin/staffs	";
	}

	@GetMapping(value = "/staffs-update/{id}")
	public String update(Model model, @PathVariable("id") int staffsId) {
		Staffs staffs = staffService.findById(staffsId);
		model.addAttribute("staffs", staffs);
		System.out.println("hihihihihihi");
		return "admin/staffs/update";
	}

	@RequestMapping(value = "update-staffs", method = RequestMethod.POST)
	public String update2(ModelMap model, @RequestParam("id") int id,@RequestParam("photo") MultipartFile image, @RequestParam("name") String name,
			@RequestParam("gender") boolean gender, @RequestParam("birthday") Date birthday,
			 @RequestParam("email") String email,
			@RequestParam("phone") String phone, @RequestParam("salary") int salary) {
		System.out.println("áddasadsasd");
		String photo = uploadImage(model, image);
		if (staffService.Update(new Staffs(id, name, gender, birthday, photo, email, phone, salary)) == true) {
			System.out.println("hahahahahaah");
			model.addAttribute("staffs", staffService.list());
			return "redirect: /Spa_V1/admin/staffs";
		} else {
			model.addAttribute("error", "Thêm phòng ban thất bại");
			return "redirect: service-add";
		}
	}

	public String uploadImage(ModelMap map, MultipartFile image) {
		if (image.isEmpty()) {
			System.out.println("File error");
			return "";
		} else {
			try {
				String path = context.getRealPath("/resources/assets/img/") + image.getOriginalFilename();
				System.out.println(path);
				image.transferTo(new File(path));
				return image.getOriginalFilename();
			} catch (Exception e) {
				System.out.println("Loi: " + e);
				return "";
			}
		}
	}
}

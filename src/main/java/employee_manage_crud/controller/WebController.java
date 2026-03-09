package employee_manage_crud.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import employee_manage_crud.dao.EmployeeDao;
import employee_manage_crud.dto.Employee;

@Controller
public class WebController {

	@RequestMapping("/saveEmployee")
	@ResponseBody
	public String insert(@ModelAttribute Employee employee) {
		EmployeeDao employeedao=new EmployeeDao();
		employeedao.insert(employee);
		return "data inserted";
	}
	
	@RequestMapping("/viewEmployees")
	
	public ModelAndView viewAll() {
		EmployeeDao employeedao=new EmployeeDao();
		 List<Employee> list=employeedao.viewAll();
		 
		 ModelAndView modelAndView=new ModelAndView("viewAll.jsp");
		 modelAndView.addObject("data", list);
		 return modelAndView;
	}
	
	@RequestMapping("/update")
	
	public ModelAndView edit(@ModelAttribute Employee emp) {
		
		EmployeeDao employeedao=new EmployeeDao();
		employeedao.edit(emp);
		
 List<Employee> list=employeedao.viewAll();
		 
		 ModelAndView modelAndView=new ModelAndView("viewAll.jsp");
		 modelAndView.addObject("data", list);
		 return modelAndView;
		
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(Employee emp) {
		EmployeeDao dao=new EmployeeDao();
		dao.delete(emp.getId());
 List<Employee> list=dao.viewAll();
		 
		 ModelAndView modelAndView=new ModelAndView("viewAll.jsp");
		 modelAndView.addObject("data", list);
		 return modelAndView;
		
				
	}
	
	@RequestMapping("/deleteAll")
	@ResponseBody
	public String deleteAll() {
		EmployeeDao dao=new EmployeeDao();
		return dao.deleteAll();
		
	}
	
	@RequestMapping("/fetchById")
	
	public ModelAndView fetchbyid(@ModelAttribute Employee emp) {
		EmployeeDao dao=new EmployeeDao();
		Employee employ=dao.fetchbyid(emp.getId());
		
		ModelAndView modelAndView=new ModelAndView("fid.jsp");
		modelAndView.addObject("employee", employ);
		return modelAndView;
	}
}

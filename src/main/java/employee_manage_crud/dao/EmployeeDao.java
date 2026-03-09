package employee_manage_crud.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import employee_manage_crud.dto.Employee;

public class EmployeeDao {

	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	public void insert(Employee employee) {
		entityTransaction.begin();
		entityManager.persist(employee);
		entityTransaction.commit();
	}
	
	public List<Employee> viewAll() {
		Query q=entityManager.createQuery("select a from Employee a");
		List<Employee> list=q.getResultList();
		
		if(!list.isEmpty()) {
			return list;
		}
		else {
			return null;
		}
	}
	
	public void edit(Employee emp ) {
		entityTransaction.begin();
		entityManager.merge(emp);
		entityTransaction.commit();
		
		
	}
	
	public void delete(int id) {
		Employee employee=entityManager.find(Employee.class, id);
		entityTransaction.begin();
		entityManager.remove(employee);
		entityTransaction.commit();
	}
	
	public String deleteAll() {
		Query q=entityManager.createQuery("select a from Employee a");
		List<Employee> list=q.getResultList();
		
		if(!list.isEmpty()) {
			entityTransaction.begin();
		for(Employee emp:list) {
			
			entityManager.remove(emp);
			
		}
		entityTransaction.commit();
			return "data deleted successfully";
		}
		return "no data found";
	}
	
	
	public Employee fetchbyid(int id) {
		 Employee emp=entityManager.find(Employee.class, id);
		 return emp;
		
		
	}
	
}

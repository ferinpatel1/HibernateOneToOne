package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.Employee;
import com.bean.EmployeeInfo;

import com.util.StudentUtils;

public class Studentdao {
	
	
	public static void insertEmployeeInfo(EmployeeInfo s) {
		
		Session session = StudentUtils.createSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(s);
		tr.commit();
		session.close();
		
	}

	public static void insertEmployee(Employee s) {
		
		Session session = StudentUtils.createSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(s);
		tr.commit();
		session.close();
		
	}
	
//	public static List<EmployeeInfo> getAllStudent(){
//		Session session = StudentUtils.createSession();
//		List<EmployeeInfo> list=session.createQuery("from Student").list();
//		session.close();
//		return list;
//		
//	}
	
//	public static Student getStudent(int id) {
//		Session session=StudentUtils.createSession();
//		Student s=session.get(Student.class, id);
//		session.close();
//		return s;
//	}
//	
//	public static void deleteStudent(int id) {
//		Session session=StudentUtils.createSession();
//		Transaction tr=session.beginTransaction();
//		Student s=session.get(Student.class, id);
//		session.delete(s);
//		tr.commit();
//		session.close();
//		
//	}
}

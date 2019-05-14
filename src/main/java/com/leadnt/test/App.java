package com.leadnt.test;

import org.hibernate.Session;

import com.leadnt.model.Contact;

public class App {

	public static void main(String[] args) {
		System.out.println("Maven + Hibernate + MySQL");
		Session session = HibernateUtil.getSessionFactory().openSession();

		session.beginTransaction();
		Contact obj = new Contact();

		obj.setFirstname("Eduardojjjjjjjj");
		obj.setLastname("Gonzalezjjjjjjj");
		obj.setEmail("eduardo.gch@gmail.comjjjjjjjj");
		obj.setTelephone("8484670201jjjj");

		session.save(obj);
		session.getTransaction().commit();

	}

}

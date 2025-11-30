package com.app.dao;

import java.util.ArrayList;
import java.util.List;
import com.app.model.*;

import org.hibernate.*;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.app.model.Admin;
import com.app.model.Books;
import com.app.model.Student;

public class LibraryDAO {

	private static SessionFactory sessionFactory = null;
	private static Session session = null;

	public static SessionFactory getSessionFactory() {
		sessionFactory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Student.class)
				.addAnnotatedClass(Admin.class).addAnnotatedClass(Books.class).buildSessionFactory();

		return sessionFactory;

	}

	public static int addStudent(Student s) {

		sessionFactory = getSessionFactory();
		session = sessionFactory.openSession();

		session.getTransaction().begin();

		session.persist(s);
		System.out.println("saved");
		session.getTransaction().commit();
		destroy();
		return s.getId();

	}

	public static int addAdmin(Admin a) {

		sessionFactory = getSessionFactory();
		session = sessionFactory.openSession();

		session.getTransaction().begin();

		session.persist(a);
		System.out.println("saved");
		session.getTransaction().commit();
		destroy();
		return a.getId();

	}

	
	
	public static Student loginsev(String prn, String password) {

		Student student = null;

		Session session = getSessionFactory().openSession();

		Query<Student> query = session.createQuery("FROM Student WHERE prn = :p AND password = :pass", Student.class);

		query.setParameter("p", prn);
		query.setParameter("pass", password);

		student = query.uniqueResult();

		session.close();

		return student;
	}

	
	
	
	public static Admin loginsevAdmin(String email, String password) {

		Admin admin = null;

		Session session = getSessionFactory().openSession();

		Query<Admin> query = session.createQuery("FROM Student WHERE email = :e AND password = :pas", Admin.class);

		query.setParameter("e", email);
		query.setParameter("pas", password);

		admin = query.uniqueResult();

		session.close();

		return admin;

	}

	
	
	public static int addBook(Books b) {

		Session session = getSessionFactory().openSession();
		session.beginTransaction();

		session.persist(b);

		session.getTransaction().commit();
		session.close();
		return b.getId();
	}

//	public static List<Books> getAllBooks() {

		/*
		 * sessionFactory = getSessionFactory(); session =
		 * getSessionFactory().openSession();
		 * 
		 * 
		 * List<Books> list = session.createQuery("from Books", Books.class).list();
		 * 
		 * @SuppressWarnings("deprecation") Query<Books>query =
		 * session.createQuery("from Books"); List<Books> list = query.list();
		 * session.close(); return list;
		 */
		public static List<Books> getAllBooks() {

		    List<Books> list = new ArrayList<>();

		    try (Session session = getSessionFactory().openSession()) {

		        Query<Books> query = session.createQuery("from Books", Books.class);
		        list = query.list();

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return list;
		}
		
		//for searching the books
		public static Books getBookId(int id) {
			sessionFactory = getSessionFactory();
			session = sessionFactory.openSession();
			
			
			Books book = session.get(Books.class, id);
			destroy();
			return book;
		}


//		
//		public static int updataBook(Books b) {
//			
//			
//			sessionFactory = getSessionFactory();
//			session = sessionFactory.openSession();
//			
//			
//			session.getTransaction().begin();
//			
//			Books b1 = session.update(b);
//			
//			session.getTransaction().commit();
//			destroy();
//			return b1.getId();
//			
//			
//		}
		
		public static boolean updateBook(Books b) {
			System.out.println("b="+b);
		    boolean status = false;
		    Transaction tx = null;

		    try (Session session = getSessionFactory().openSession()) {
		        tx = session.beginTransaction();

		        session.update(b); // Update book in DB
		        tx.commit();
		        status = true;
		    } catch (Exception e) {
		        if (tx != null) tx.rollback();
		        e.printStackTrace();
		    }

		    return status;
		}

		
		
		
		
		
		
		
		
		
//		public static boolean deleteBook(Books b) {
//			sessionFactory = getSessionFactory();
//			session = sessionFactory.openSession();
//			
//			
//			session.getTransaction().begin();
//			
//			Books b1 = session.remove(b);
//			
//			session.getTransaction().commit();
//			destroy();
//			return b;
//			
//		}
		
		
		public static boolean deleteBook(int id) {
		    boolean status = false;

		    Transaction tx = null;
		    try (Session session = getSessionFactory().openSession()) {
		        tx = session.beginTransaction();

		        Books b = session.get(Books.class, id);
		        if (b != null) {
		            session.delete(b);
		            status = true;
		        }

		        tx.commit();
		    } catch (Exception e) {
		        if (tx != null) tx.rollback();
		        e.printStackTrace();
		    }

		    return status;
		}

		
		
		
		
		
		
		
		
		
		public static boolean borrowBook(int id) {
			
//			sessionFactory = getSessionFactory();
//			session = sessionFactory.openSession();
//			
		    Transaction tx = null;
		    boolean status = false;

		    
		    try (Session session = getSessionFactory().openSession()) {

		    	
		        tx = session.beginTransaction();

		        Books b = session.get(Books.class, id);

		        if (b != null && b.getAvailable() > 0) {

		            b.setAvailable(b.getAvailable() - 1);

		            session.merge(b);
		            tx.commit();
		            status = true;
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return status;
		}
		
	public static boolean returnBook(int id) {
			
//			sessionFactory = getSessionFactory();
//			session = sessionFactory.openSession();
//			
		    Transaction tx = null;
		    boolean status = false;

		    
		    try (Session session = getSessionFactory().openSession()) {

		    	
		        tx = session.beginTransaction();

		        Books b = session.get(Books.class, id);

		        if (b != null && b.getAvailable() > 0) {

		            b.setAvailable(b.getAvailable() - 1);

		            session.merge(b);
		            tx.commit();
		            status = true;
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return status;
		}

	

	private static void destroy() {
		// TODO Auto-generated method stub
		session.close();
		sessionFactory.close();
	}

}

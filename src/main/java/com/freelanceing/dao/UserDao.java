package com.freelanceing.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.freelanceing.dto.User;
@Repository
public class UserDao {
	@Autowired
	EntityManager entityManager;
	@Autowired
	EntityTransaction entityTransaction;
	
	public void saveUser(User user) {
		entityTransaction.begin();
		entityManager.persist(user);
		entityTransaction.commit();
		
	}
	public User login(String email,String pws) {
		System.out.println(email+pws);
		Query query=entityManager.createQuery("select u from User u where u.email=?1 and u.password=?2");
		query.setParameter(1, email);
		query.setParameter(2, pws);
		List<User> users=query.getResultList();
	
		if(users!=null&&users.size()>0) {
			return users.get(0);
		}
		else {
			return null;
		}
		/*
		 * if(users!=null) { return users.get(0); }else { return null; }
		 */
		
	}
	
}

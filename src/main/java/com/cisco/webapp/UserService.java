package com.cisco.webapp;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.cisco.doa.UserDao;


@Path("/user")
public class UserService {
	
UserDao dao = new UserDao();
	
	public void setUserDao(UserDao dao){
		this.dao = dao;
	}
	@GET
	@Path("check/{param}")
	@Produces({MediaType.APPLICATION_JSON})
	public Users getUser(@PathParam("param") String param) {
		System.out.println("check if : "+param+ " exists\n" );
		Users newUser = new Users();
		newUser.setEmailId("shhvemail");
		newUser.setName("shhv");
		newUser.setPassword("shhvpassword");
		return newUser;
	}
	
	@GET
	@Path("blogs")
	@Produces({MediaType.APPLICATION_JSON})
	public List<Users> getUser() {
		System.out.println("get blog contents" );
		List<Users> listUser = new ArrayList<Users>();
 		Users newUser = new Users();
		newUser.setEmailId("blogemail");
		newUser.setName("blog");
		newUser.setPassword("blogpassword");
		listUser.add(newUser);
		return listUser;
	}
	
	@GET
	@Produces({MediaType.APPLICATION_JSON})
	public List<Users> getUsers() {
		return dao.getUsers();
	}
	
	
	@POST
	@Path("/create")
	@Consumes(MediaType.APPLICATION_JSON)
	//public void createUser(@FormParam("name") String name,@FormParam("age") Integer age,@FormParam("emailId") String emailId){
	public void createUser(Users u){
		System.out.println("Creating user: "+u.getName());
		
//		Session ses = HibernateUtil.currentSession();
//		try {
//			Transaction tx = ses.beginTransaction();
//			ses.save(u);
//			tx.commit();
//		}finally{
//			HibernateUtil.closeSession();
//		}
	}
	
	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	//@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	//public void updateUser(@FormParam("id") Integer id, @FormParam("name") String name,@FormParam("age") Integer age,@FormParam("emailId") String emailId){
	public void updateUser(Users u){
		System.out.println("Updating user: "+u.getName());
		Session ses = HibernateUtil.currentSession();
		try {
			Transaction tx = ses.beginTransaction();
			ses.update(u);
			tx.commit();
		}finally{
			HibernateUtil.closeSession();
		}
	}
	
	@DELETE
	@Path("/{param}")
	@Produces({MediaType.APPLICATION_JSON})
	public boolean deleteUser(@PathParam("param") Integer id) {
		System.out.println("Deleting user: "+id);
		Session ses = HibernateUtil.currentSession();
		try {
			Transaction tx = ses.beginTransaction();
			Users u = (Users) ses.load(Users.class, id);
			ses.delete(u);
			tx.commit();
			return true;
		} finally {
			HibernateUtil.closeSession();
		}
	}
	
}


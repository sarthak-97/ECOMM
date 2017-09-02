package org.vardanapp.controllers;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.vardanapp.models.VD_UserDetails;

/**
 * 
 * @author sarthak-pc
 *
 */

@Controller
public class LoginController {

	@Autowired
	private SessionFactory sessionFactory;
	private VD_UserDetails userdet;
	

	/**
	 * controller for signup of user
	 * @param userdet
	 * @return
	 */
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signup(@ModelAttribute("userdet") org.vardanapp.models.VD_UserDetails userdet) {
		Session session = sessionFactory.openSession();
		ModelAndView model = new ModelAndView("index2");
		if (session.get(VD_UserDetails.class,userdet.getEmailId()) == null) {
			
			session.beginTransaction();
			session.save(userdet);
			
			session.getTransaction().commit();
			model.addObject("invalid", "Successfully registered, login to proceed!");
			model.addObject("data","LOGIN/SIGNUP");

		} else
			model.addObject("invalid", "This email is already registered.");
	     	model.addObject("data","LOGIN/SIGNUP");
		session.close();
		return model;

	}
	
	/**\
	 * controller for login process of Buyer
	 * @param httpSession
	 * @param emailid
	 * @param password
	 * @return
	 */
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(HttpSession httpSession, @RequestParam("id") String emailid,
			@RequestParam("pass") String password) {
		ModelAndView model;
		Session session = sessionFactory.openSession();
		userdet = (VD_UserDetails) session.get(VD_UserDetails.class, emailid);
		if (userdet != null) {
					if (userdet.getPassword().equals(password)) {
							httpSession.setAttribute("SESSION_email", userdet.getEmailId());
							httpSession.setAttribute("SESSION_name", userdet.getFirstName());
						
							if((String) httpSession.getAttribute("SESSION_email")!=null){
								model = new ModelAndView("index2");
								model.addObject("username","Logout Here" + "  " +	httpSession.getAttribute("SESSION_name"));
								model.addObject("invalid","SUCCESSFULLY LOGGED IN.");
								
				               }
							else{
								model = new ModelAndView("index2");
								model.addObject("data","LOGIN/SIGNUP");
								model.addObject("invalid", "LOG IN FIRST TO CONTINUE");
							}
			} else {
				model = new ModelAndView("index2");
				model.addObject("data","LOGIN/SIGNUP");
				model.addObject("invalid", "invalid details");
			}
		}

		else {
			model = new ModelAndView("index2");
			model.addObject("data","LOGIN/SIGNUP");
			model.addObject("invalid", "no record found");
		}
		session.close();
		return model;
	}
	
	/**
	 * 
	 * controller for session logout
	 * 
	 * @author sarthak
	 * @param httpSession
	 * @return
	 */

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView LogoutController(HttpSession httpSession) {
		httpSession.invalidate();
		ModelAndView model = new ModelAndView("index2");
		model.addObject("invalid", "successfully logged out");
		model.addObject("data","LOGIN/SIGNUP");
		return model;
	}

	
	
	/**
	 * go to login page
	 * @param httpSession
	 * @return
	 */
	@RequestMapping(value = "/loginpage", method = RequestMethod.GET)
	public ModelAndView LogController(HttpSession httpSession) {
		
		ModelAndView model = new ModelAndView("login");
		
		return model;
	}
	
	
}

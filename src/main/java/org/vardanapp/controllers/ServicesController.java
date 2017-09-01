package org.vardanapp.controllers;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.vardanapp.models.VD_UserDetails;

/**
 * 
 * @author sarthak-pc
 *
 *This Controller Handles all the request for Services
 *
 *
 */


@Controller
public class ServicesController {
	
	@Autowired
	private SessionFactory sessionFactory;
	private VD_UserDetails userdet;
	
	
					
				/**
				 * 
				 * @param httpSession
				 * @return
				 * 
				 * This controller handles the GET request of the Recharge View
				 * 
				 */
	
	
				@RequestMapping(value = "/services/recharge", method = RequestMethod.GET)
				public ModelAndView Recharge(HttpSession httpSession){
					
						ModelAndView model= new ModelAndView("recharge");
						model.addObject("username",httpSession.getAttribute("SESSION_name"));
		
						return model;
				}
	

}

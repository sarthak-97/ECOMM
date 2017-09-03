package org.vardanapp.models;

/**
 * @author sarthak
 */

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class VD_UserDetails {

	
	@Id 
	private String EmailId;
	private String FirstName;
	private String LastName;
	private String Country;
	
	private long Contact;
	private String Password;
	public String getEmailId() {
		return EmailId;
	}
	public void setEmailId(String emailId) {
		EmailId = emailId;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public long getContact() {
		return Contact;
	}
	public void setContact(long contact) {
		Contact = contact;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	
}

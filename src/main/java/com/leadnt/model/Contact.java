package com.leadnt.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "CONTACTS")
public class Contact {

	@Id
	@Column(name = "ID")
	@GeneratedValue
	private Integer id;

	@NotEmpty
	@Column(name = "FIRSTNAME")
	private String firstname;

	@NotEmpty
	@Column(name = "LASTNAME")
	private String lastname;

	@NotEmpty
	@Column(name = "EMAIL")
	private String email;

	@NotEmpty
	@Column(name = "TELEPHONE")
	private String telephone;

	public String getEmail() {
		return email;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

}

package com.summitworks.service;

import java.util.List;

import com.summitworks.model.Contact;

public interface ContactService {
	
	public void addContact(Contact contact);
	public List<Contact> listContact();
	public void removeContact(Integer id);
}

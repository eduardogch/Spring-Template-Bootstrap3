package com.leadnt.service;

import java.util.List;

import com.leadnt.model.Contact;

public interface ContactService {
	
	public void addContact(Contact contact);
	public List<Contact> listContact();
	public void removeContact(Integer id);
}

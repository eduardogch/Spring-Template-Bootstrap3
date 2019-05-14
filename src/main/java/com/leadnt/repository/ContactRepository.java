package com.leadnt.repository;

import java.util.List;

import com.leadnt.model.Contact;

public interface ContactRepository {
	
	public void addContact(Contact contact);
	public List<Contact> listContact();
	public void removeContact(Integer id);
}

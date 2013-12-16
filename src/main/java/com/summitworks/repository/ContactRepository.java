package com.summitworks.repository;

import java.util.List;

import com.summitworks.model.Contact;

public interface ContactRepository {
	
	public void addContact(Contact contact);
	public List<Contact> listContact();
	public void removeContact(Integer id);
}

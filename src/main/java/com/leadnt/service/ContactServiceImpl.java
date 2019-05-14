package com.leadnt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.leadnt.model.Contact;
import com.leadnt.repository.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactRepository contactRepository;
	
	@Transactional
	public void addContact(Contact contact) {
		contactRepository.addContact(contact);
	}

	@Transactional
	public List<Contact> listContact() {

		return contactRepository.listContact();
	}

	@Transactional
	public void removeContact(Integer id) {
		contactRepository.removeContact(id);
	}
}

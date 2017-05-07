package com.leadnt.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.leadnt.model.Contact;
import com.leadnt.service.ContactService;

@Controller
@RequestMapping("/contact")
public class ContactController {

	@Autowired
	private ContactService contactService;

	// Main page with contact's info list
	@RequestMapping(method = RequestMethod.GET)
	public String listContact(ModelMap model) {

		model.addAttribute("contact", new Contact());
		model.addAttribute("contactList", contactService.listContact());
		return "contact/list";
	}

	// Page who show a form to add a contact
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addContactGet(ModelMap model) {

		model.addAttribute("contact", new Contact());
		return "contact/add";
	}

	// Page show after to added a contact
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addContactPost(
			@Valid @ModelAttribute("contact") Contact contact,
			BindingResult result) {

		if (!result.hasErrors()) {
			contactService.addContact(contact);
			return "redirect:/contact";
		} else {
			return "contact/add";
		}
	}

	// Method who delete a contact with his ID
	@RequestMapping("/delete/{contactId}")
	public String deleteContact(@PathVariable("contactId") Integer contactId) {

		contactService.removeContact(contactId);
		return "redirect:/contact";
	}
}

package com.is.inventory.model;

import java.util.Date;

public class Distributor {
	
	private int ID;
	private String name;
	private User person;
	private User addedBy;
	private ContactInformation contactInformation;
	private Status status;
	private Date dateAdded;
	private int notes;
	private Address address;
	/**
	 * @return the id
	 */
	public int getID() {
		return ID;
	}
	/**
	 * @param id the id to set
	 */
	public void setID(int ID) {
		this.ID = ID;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the person
	 */
	public User getUser() {
		return person;
	}
	/**
	 * @param person the person to set
	 */
	public void setUser(User person) {
		this.person = person;
	}
	/**
	 * @return the contactInformation
	 */
	public ContactInformation getContactInformation() {
		return contactInformation;
	}
	/**
	 * @param contactInformation the contactInformation to set
	 */
	public void setContactInformation(ContactInformation contactInformation) {
		this.contactInformation = contactInformation;
	}
	/**
	 * @return the status
	 */
	public Status getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(Status status) {
		this.status = status;
	}
	/**
	 * @return the dateAdded
	 */
	public Date getDateAdded() {
		return dateAdded;
	}
	/**
	 * @param dateAdded the dateAdded to set
	 */
	public void setDateAdded(Date dateAdded) {
		this.dateAdded = dateAdded;
	}
	/**
	 * @return the notes
	 */
	public int getNotes() {
		return notes;
	}
	/**
	 * @param notes the notes to set
	 */
	public void setNotes(int notes) {
		this.notes = notes;
	}
	/**
	 * @return the addedBy
	 */
	public User getAddedBy() {
		return addedBy;
	}
	/**
	 * @param addedBy the addedBy to set
	 */
	public void setAddedBy(User addedBy) {
		this.addedBy = addedBy;
	}
	/**
	 * @return the address
	 */
	public Address getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(Address address) {
		this.address = address;
	}
	
}

package com.is.inventory.model;

import java.util.Date;

public class Distributor {
	
	private int ID;
	private String name;
	private Person person;
	private ContactInformation contactInformation;
	private Status status;
	private Date dateAdded;
	private String notes;
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
	public Person getPerson() {
		return person;
	}
	/**
	 * @param person the person to set
	 */
	public void setPerson(Person person) {
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
	public String getNotes() {
		return notes;
	}
	/**
	 * @param notes the notes to set
	 */
	public void setNotes(String notes) {
		this.notes = notes;
	}
	
}

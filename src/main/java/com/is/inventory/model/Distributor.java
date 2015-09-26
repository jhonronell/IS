package com.is.inventory.model;

public class Distributor {
	private int id;
	private String name;
	private Integer contactId;
	private Integer dateAdded;
	private Integer addedBy;
	private Boolean isactive;
	private Address address;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the contactId
	 */
	public Integer getContactId() {
		return contactId;
	}

	/**
	 * @param contactId
	 *            the contactId to set
	 */
	public void setContactId(Integer contactId) {
		this.contactId = contactId;
	}

	/**
	 * @return the dateAdded
	 */
	public Integer getDateAdded() {
		return dateAdded;
	}

	/**
	 * @param dateAdded
	 *            the dateAdded to set
	 */
	public void setDateAdded(Integer dateAdded) {
		this.dateAdded = dateAdded;
	}

	/**
	 * @return the addedBy
	 */
	public Integer getAddedBy() {
		return addedBy;
	}

	/**
	 * @param addedBy
	 *            the addedBy to set
	 */
	public void setAddedBy(Integer addedBy) {
		this.addedBy = addedBy;
	}

	/**
	 * @return the isactive
	 */
	public Boolean getIsactive() {
		return isactive;
	}

	/**
	 * @param isactive
	 *            the isactive to set
	 */
	public void setIsactive(Boolean isactive) {
		this.isactive = isactive;
	}

	/**
	 * @return the address
	 */
	public Address getAddress() {
		return address;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setAddress(Address address) {
		this.address = address;
	}

}

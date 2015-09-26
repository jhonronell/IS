package com.is.inventory.model;

public class Contact {
	private int id;
	private String contactType;
	private String value;
	private Integer contactFk;

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
	 * @return the contactType
	 */
	public String getContactType() {
		return contactType;
	}

	/**
	 * @param contactType
	 *            the contactType to set
	 */
	public void setContactType(String contactType) {
		this.contactType = contactType;
	}

	/**
	 * @return the value
	 */
	public String getValue() {
		return value;
	}

	/**
	 * @param value
	 *            the value to set
	 */
	public void setValue(String value) {
		this.value = value;
	}

	/**
	 * @return the contactFk
	 */
	public Integer getContactFk() {
		return contactFk;
	}

	/**
	 * @param contactFk
	 *            the contactFk to set
	 */
	public void setContactFk(Integer contactFk) {
		this.contactFk = contactFk;
	}

}

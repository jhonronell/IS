package com.is.inventory.model;

public class PromoTable {
	private int id;
	private Double percentoff;
	private String dateadded;
	private Integer addedby;
	private Boolean isactive;

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
	 * @return the percentoff
	 */
	public Double getPercentoff() {
		return percentoff;
	}

	/**
	 * @param percentoff
	 *            the percentoff to set
	 */
	public void setPercentoff(Double percentoff) {
		this.percentoff = percentoff;
	}

	/**
	 * @return the dateadded
	 */
	public String getDateadded() {
		return dateadded;
	}

	/**
	 * @param dateadded
	 *            the dateadded to set
	 */
	public void setDateadded(String dateadded) {
		this.dateadded = dateadded;
	}

	/**
	 * @return the addedby
	 */
	public Integer getAddedby() {
		return addedby;
	}

	/**
	 * @param addedby
	 *            the addedby to set
	 */
	public void setAddedby(Integer addedby) {
		this.addedby = addedby;
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

}

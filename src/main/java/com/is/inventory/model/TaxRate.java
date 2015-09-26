package com.is.inventory.model;

public class TaxRate
{
  private int id;
  private Double taxPercent;
  private String dateAdded;
  private Integer addedBy;
  private Boolean isActive;

  //
  // constructors
  //
  public TaxRate()
  {
  }

  public TaxRate(int id)
  {
    this.id = id;
  }

  public TaxRate(int id, Double taxPercent, String dateAdded, Integer addedBy, Boolean isActive)
  {
    this.id = id;
    this.taxPercent = taxPercent;
    this.dateAdded = dateAdded;
    this.addedBy = addedBy;
    this.isActive = isActive;
  }

  //
  // getters/setters
  //
  public int getId()
  {
    return this.id;
  }

  public void setId(int id)
  {
    this.id = id;
  }

  public Double getTaxPercent()
  {
    return this.taxPercent;
  }

  public void setTaxPercent(Double taxPercent)
  {
    this.taxPercent = taxPercent;
  }

  public String getDateAdded()
  {
    return this.dateAdded;
  }

  public void setDateAdded(String dateAdded)
  {
    this.dateAdded = dateAdded;
  }

  public Integer getAddedBy()
  {
    return this.addedBy;
  }

  public void setAddedBy(Integer addedBy)
  {
    this.addedBy = addedBy;
  }

  public Boolean getIsActive()
  {
    return this.isActive;
  }

  public void setIsActive(Boolean isActive)
  {
    this.isActive = isActive;
  }
}

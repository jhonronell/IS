package com.is.inventory.dao;


public class DAOException extends Exception
{
  public DAOException(String s, Exception e)
  {
    super(s, e);
  }

  public DAOException(String e)
  {
    super(e);
  }

  public DAOException(Exception e)
  {
    super(e);
  }
}
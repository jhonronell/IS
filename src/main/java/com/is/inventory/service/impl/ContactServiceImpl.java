package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.ContactDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Contact;
import com.is.inventory.service.ContactService;

public class ContactServiceImpl implements ContactService {

	private ContactDAO contactDAO;
	
	

	public void setContactDAO(ContactDAO contactDAO) {
		this.contactDAO = contactDAO;
	}

	@Override
	public Contact getByPrimaryKey(Contact id) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Contact obj) throws DAOException {
		// TODO Auto-generated method stub

	}

	@Override
	public void insert(Contact obj) throws DAOException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Contact obj) throws DAOException {
		// TODO Auto-generated method stub

	}

	@Override
	public List getByContactType(String contactType) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByValue(String value) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByContactFk(Integer contactFk) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}

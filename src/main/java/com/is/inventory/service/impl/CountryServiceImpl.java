package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.CountryDAO;
import com.is.inventory.dao.DAOException;
import com.is.inventory.model.Country;
import com.is.inventory.service.CountryService;

public class CountryServiceImpl implements CountryService {
	
	private CountryDAO countryDAO; 
	
	public void setCountryDAO(CountryDAO countryDAO) {
		this.countryDAO = countryDAO;
	}

	@Override
	public Country getByPrimaryKey(Country country) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Country country) throws DAOException {
		// TODO Auto-generated method stub

	}

	@Override
	public void insert(Country country) throws DAOException {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Country country) throws DAOException {
		// TODO Auto-generated method stub

	}

	@Override
	public List getByCountryCode(String countryCode) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List getByCountryName(String countryName) throws DAOException {
		// TODO Auto-generated method stub
		return null;
	}

}

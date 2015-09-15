package com.is.inventory.service.impl;

import java.util.List;

import com.is.inventory.dao.impl.DistributorDaoImpl;
import com.is.inventory.model.Distributor;
import com.is.inventory.service.DistributorService;

public class DistributorServiceImpl implements DistributorService {

	private final DistributorDaoImpl distributorDao = new DistributorDaoImpl();
	
	@Override
	public void addDistributor(Distributor distributor) {
		// TODO Auto-generated method stub
		distributorDao.saveDistributor(distributor);
	}

	@Override
	public void updateDistributor(Distributor distributor) {
		// TODO Auto-generated method stub
		distributorDao.updateDistributor(distributor);
	}

	@Override
	public void deleteDistributor(Distributor distributor) {
		// TODO Auto-generated method stub
		distributorDao.deleteDistributor(distributor);
	}

	@Override
	public List<Distributor> getDistributorList(Distributor distributor) {
		// TODO Auto-generated method stub
		return null;
	}

}

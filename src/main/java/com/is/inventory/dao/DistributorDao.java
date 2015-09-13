package com.is.inventory.dao;

import java.util.List;

import com.is.inventory.model.Distributor;

public interface DistributorDao {
	public void addDistributor(Distributor distributor);
	public void updateDistributor(Distributor distributor);
	public void deleteDistributor(Distributor distributor);
	public List<Distributor> getDistributorList(Distributor distributor);
}

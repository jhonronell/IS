package com.is.model.service;

import java.util.List;

import com.is.inventory.model.Distributor;

public interface DistributorService {
	public void addDistributor(Distributor distributor);
	public void updateDistributor(Distributor distributor);
	public void deleteDistributor(Distributor distributor);
	public List<Distributor> getDistributorList(Distributor distributor);
}

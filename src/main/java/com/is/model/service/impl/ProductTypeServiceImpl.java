package com.is.model.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.is.inventory.model.ProductOption;

public class ProductTypeServiceImpl {
	
	private List<ProductOption> productOptionList = new ArrayList<ProductOption>();

	public void addProductOption(ProductOption option) {
		productOptionList.add(option);
	}

	public void remoteProductOption(ProductOption option) {
		productOptionList.remove(option);
	}

	public List<ProductOption> getProductOptionList() {
		return productOptionList;
	}
	public void setProductOptionList(List<ProductOption> productOptionList) {
		this.productOptionList = productOptionList;
	}
	public int getAttributeListSize() {
		return productOptionList.size();
	}

	public int getOptionId(int listIndex) {
		return productOptionList.get(listIndex).getID();
	}

	public String getOptionName(int listIndex) {
		return productOptionList.get(listIndex).getName();
	}
}

package com.xianchumo.shop.dao;

import com.xianchumo.shop.entity.Merchant;
/**
 * 
 * Copyright 2015 xianchumo.com
 * @Team xianchumo
 * @data：2015年9月19日
 * @author CGZ
 * @description
 */
public interface MerchantDao extends BaseDao<Merchant>{
	public Merchant findByaddress(Long addressId);
}

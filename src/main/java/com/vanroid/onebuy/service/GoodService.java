package com.vanroid.onebuy.service;


import java.util.List;

import com.vanroid.onebuy.common.Pager;
import com.vanroid.onebuy.entity.Good;

/**
*@author kaiscript
*@date 2016年1月19日 下午10:48:20
*/
public interface GoodService extends BaseService<Good> {
	
	Good getGoodByNameAndDescription(String name,String description);
	
	Good findByExampleGood(Good good);
	
	List<Good> findGoodFuzzy(String goodName);
	
	Pager findGoodFuzzyPager(String goodName,Pager pager);
}

package com.vanroid.onebuy.service;

import java.util.List;

import com.vanroid.onebuy.entity.Stage;

/**
*@author kaiscript
*@date 2016年1月22日 下午6:08:24
*/
public interface StageService extends BaseService<Stage> {

	/**
	 * 获取某商品最后一期期数
	 * @param goodIdl 
	 * @return
	 */
	Integer getLastStageNum(Long goodId);
	
	/**
	 * 获取某商品最新一期
	 * @param goodId
	 * @return
	 */
	Stage getLastStageByGoodId(Long goodId);
	
}
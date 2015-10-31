package com.xianchumo.shop.dao;

import java.util.Date;
import java.util.List;

import com.xianchumo.shop.entity.Order;
import com.xianchumo.shop.entity.ShoppingCart;

public interface OrderDao extends BaseDao<Order>{
	/**
	 * 根据商家id查找对应的定单，每次查询20条
	 * @param merchantId
	 * @param page
	 * @return
	 */
	public List<Order> findByMerchant(Long merchantId, int page);
	/**
	 * 根据商家的id和订单的状态进行查询
	 * @param merchantId
	 * @param state
	 * @param page
	 * @return
	 */
	public List<Order> findByMerchantAndState(Long merchantId, int state, int page);
	
	public List<Order> findOrder(int page);
	/**
	 * 查找某个时间段内的订单
	 * @param orderTime
	 * @param page
	 * @return
	 */
	public List<Order> findByOrderTime(Date startTime, Date endTime, int page);
	/**
	 * 查询某个用户的订单
	 * @param phone
	 * @param page
	 * @return
	 */
	public List<Order> findByUser(String phone, int page);
	/**
	 * 查询某个用户某个时间段内的订单
	 * @param phone
	 * @param startTime
	 * @param endTime
	 * @param page
	 * @return
	 */
	public List<Order> findByUserAndTime(String phone, Date startTime, Date endTime, int page);
}

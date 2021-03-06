package com.vanroid.onebuy.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Type;

/**
 * @author kaiscript
 * @date 2016年1月17日 下午3:01:36
 */
@Entity
@Table(name = "ob_stage")
public class Stage {

	private Long id;
	private Good good;
	private Integer num;
	private Integer totalPrice;
	private Integer quantity;
	private Integer purchasedQuantity;
	private Integer price;
	private Date endTime;
	private Date createTime;
	private ShoppingCart shoppingCart;
	private Integer status;
	private Date announceTime;
	private String luckyCode;
	private User luckyUser;
	private Boolean ifDelivery;
	private Boolean recommend;
	private Set<Code> codes = new HashSet<Code>();
	private Set<Order> orders = new HashSet<Order>();

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "good_id", nullable = false)
	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	@Column
	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	@Column
	public Integer getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Column
	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Column(columnDefinition = "Integer default 0")
	public Integer getPurchasedQuantity() {
		return purchasedQuantity;
	}

	public void setPurchasedQuantity(Integer purchasedQuantity) {
		this.purchasedQuantity = purchasedQuantity;
	}

	@Column
	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	@Temporal(value = TemporalType.TIMESTAMP)
	@Column(nullable = true)
	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "stage")
	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	@Column
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@Temporal(value = TemporalType.TIMESTAMP)
	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Temporal(value = TemporalType.TIMESTAMP)
	@Column(nullable = true)
	public Date getAnnounceTime() {
		return announceTime;
	}

	public void setAnnounceTime(Date announceTime) {
		this.announceTime = announceTime;
	}

	@Column(nullable = true)
	public String getLuckyCode() {
		return luckyCode;
	}

	public void setLuckyCode(String luckyCode) {
		this.luckyCode = luckyCode;
	}

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	public User getLuckyUser() {
		return luckyUser;
	}

	public void setLuckyUser(User luckyUser) {
		this.luckyUser = luckyUser;
	}

	public Boolean getIfDelivery() {
		return ifDelivery;
	}

	public void setIfDelivery(Boolean ifDelivery) {
		this.ifDelivery = ifDelivery;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "stage")
	public Set<Code> getCodes() {
		return codes;
	}

	public void setCodes(Set<Code> codes) {
		this.codes = codes;
	}

	@OneToOne(mappedBy = "stage")
	public ShoppingCart getShoppingCart() {
		return shoppingCart;
	}

	public void setShoppingCart(ShoppingCart shoppingCart) {
		this.shoppingCart = shoppingCart;
	}
	@Column(name = "recommend", nullable = false)
	@Type(type = "org.hibernate.type.NumericBooleanType")
	public Boolean getRecommend() {
		return recommend;
	}

	public void setRecommend(Boolean recommend) {
		this.recommend = recommend;
	}

	public Stage() {
		super();
	}
}

package com.smf.shop.model.vo;

public class ResellStock {

	private int resellNo;
	private String productName;
	private String userId;
	private int resellPrice;
	private int Stock;
	private String size;
	private String status;

	public ResellStock() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ResellStock(int resellNo, String productName, String userId, int resellPrice, int stock, String size,
			String status) {
		super();
		this.resellNo = resellNo;
		this.productName = productName;
		this.userId = userId;
		this.resellPrice = resellPrice;
		Stock = stock;
		this.size = size;
		this.status = status;
	}

	public int getResellNo() {
		return resellNo;
	}

	public void setResellNo(int resellNo) {
		this.resellNo = resellNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getResellPrice() {
		return resellPrice;
	}

	public void setResellPrice(int resellPrice) {
		this.resellPrice = resellPrice;
	}

	public int getStock() {
		return Stock;
	}

	public void setStock(int stock) {
		Stock = stock;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "ResellStock [resellNo=" + resellNo + ", productName=" + productName + ", userId=" + userId
				+ ", resellPrice=" + resellPrice + ", Stock=" + Stock + ", size=" + size + ", status=" + status + "]";
	}

}

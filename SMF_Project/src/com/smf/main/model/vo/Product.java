package com.smf.main.model.vo;

public class Product {
	private String productName;
	private int companyPrice;
	private int tradeCount;
	private String status;
	private String imgPath;
	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(String productName, int companyPrice, int tradeCount, String status, String imgPath) {
		super();
		this.productName = productName;
		this.companyPrice = companyPrice;
		this.tradeCount = tradeCount;
		this.status = status;
		this.imgPath = imgPath;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getcompanyPrice() {
		return companyPrice;
	}

	public void setcompanyPrice(int companyPrice) {
		this.companyPrice = companyPrice;
	}

	public int getTradeCount() {
		return tradeCount;
	}

	public void setTradeCount(int tradeCount) {
		this.tradeCount = tradeCount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	@Override
	public String toString() {
		return "Product [productName=" + productName + ", companyPrice=" + companyPrice + ", tradeCount=" + tradeCount
				+ ", status=" + status + ", imgPath=" + imgPath + "]";
	}
	
	
}



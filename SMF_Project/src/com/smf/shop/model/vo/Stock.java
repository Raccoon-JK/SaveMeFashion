package com.smf.shop.model.vo;

public class Stock {

	private int StockNo;
	private String productName;
	private int stock;
	private String size;

	public Stock() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Stock(int stockNo, String productName, int stock, String size) {
		super();
		StockNo = stockNo;
		this.productName = productName;
		this.stock = stock;
		this.size = size;
	}

	public int getStockNo() {
		return StockNo;
	}

	public void setStockNo(int stockNo) {
		StockNo = stockNo;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	@Override
	public String toString() {
		return "Stock [StockNo=" + StockNo + ", productName=" + productName + ", stock=" + stock + ", size=" + size
				+ "]";
	}

}

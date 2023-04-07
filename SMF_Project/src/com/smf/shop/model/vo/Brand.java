package com.smf.shop.model.vo;

public class Brand {

	private int brandNo;
	private String brandName;
	private String luxuryCheck;

	public Brand() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Brand(int brandNo, String brandName, String luxuryCheck) {
		super();
		this.brandNo = brandNo;
		this.brandName = brandName;
		this.luxuryCheck = luxuryCheck;
	}

	public int getBrandNo() {
		return brandNo;
	}

	public void setBrandNo(int brandNo) {
		this.brandNo = brandNo;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public String getLuxuryCheck() {
		return luxuryCheck;
	}

	public void setLuxuryCheck(String luxuryCheck) {
		this.luxuryCheck = luxuryCheck;
	}

	@Override
	public String toString() {
		return "Brand [brandNo=" + brandNo + ", brandName=" + brandName + ", luxuryCheck=" + luxuryCheck + "]";
	}

}

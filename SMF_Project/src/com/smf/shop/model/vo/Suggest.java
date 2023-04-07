package com.smf.shop.model.vo;

public class Suggest {

	private int suggestNo;
	private String userId;
	private String suggestBrand;
	private String suggestName;
	private int suggestPrice;
	private String suggestSize;
	private int suggestCount;

	public Suggest() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Suggest(int suggestNo, String userId, String suggestBrand, String suggestName, int suggestPrice,
			String suggestSize, int suggestCount) {
		super();
		this.suggestNo = suggestNo;
		this.userId = userId;
		this.suggestBrand = suggestBrand;
		this.suggestName = suggestName;
		this.suggestPrice = suggestPrice;
		this.suggestSize = suggestSize;
		this.suggestCount = suggestCount;
	}

	public int getSuggestNo() {
		return suggestNo;
	}

	public void setSuggestNo(int suggestNo) {
		this.suggestNo = suggestNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSuggestBrand() {
		return suggestBrand;
	}

	public void setSuggestBrand(String suggestBrand) {
		this.suggestBrand = suggestBrand;
	}

	public String getSuggestName() {
		return suggestName;
	}

	public void setSuggestName(String suggestName) {
		this.suggestName = suggestName;
	}

	public int getSuggestPrice() {
		return suggestPrice;
	}

	public void setSuggestPrice(int suggestPrice) {
		this.suggestPrice = suggestPrice;
	}

	public String getSuggestSize() {
		return suggestSize;
	}

	public void setSuggestSize(String suggestSize) {
		this.suggestSize = suggestSize;
	}

	public int getSuggestCount() {
		return suggestCount;
	}

	public void setSuggestCount(int suggestCount) {
		this.suggestCount = suggestCount;
	}

	@Override
	public String toString() {
		return "Suggest [suggestNo=" + suggestNo + ", userId=" + userId + ", suggestBrand=" + suggestBrand
				+ ", suggestName=" + suggestName + ", suggestPrice=" + suggestPrice + ", suggestSize=" + suggestSize
				+ ", suggestCount=" + suggestCount + "]";
	}

}

package com.smf.style.model.vo;

public class PostImg {
		
	private int imgNo;			//	IMG_NO
	private int postNo;			//	POST_NO
	private String imgName;		//	IMG_NAME
	private String imgPath;		//	IMG_PATH
	private String imgStatus;	//	IMG_STATUS
	
	public PostImg() {
		super();
	}

	public PostImg(int imgNo, int postNo, String imgName, String imgPath, String imgStatus) {
		super();
		this.imgNo = imgNo;
		this.postNo = postNo;
		this.imgName = imgName;
		this.imgPath = imgPath;
		this.imgStatus = imgStatus;
	}

	public int getImgNo() {
		return imgNo;
	}

	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getImgName() {
		return imgName;
	}

	public void setImgName(String imgName) {
		this.imgName = imgName;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public String getImgStatus() {
		return imgStatus;
	}

	public void setImgStatus(String imgStatus) {
		this.imgStatus = imgStatus;
	}

	@Override
	public String toString() {
		return "PostImg [imgNo=" + imgNo + ", postNo=" + postNo + ", imgName=" + imgName + ", imgPath=" + imgPath
				+ ", imgStatus=" + imgStatus + "]";
	}
	
	

}

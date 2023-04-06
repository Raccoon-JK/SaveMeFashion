<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="mypageHead.jsp"></jsp:include>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/my/css/mypageWhishList.css">
<title>Insert title here</title>
</head>
<body>
    <div id="mypage_wrapper">
    	<jsp:include page="mypageMenu.jsp"></jsp:include>
    	<div id="mypage_content_wrapper">
            <div id="mypage_title">
                <p id="title" style="display: inline-block;">관심 상품 / 장바구니</p>
            </div>
            <div id="mypage_content">
            	<div id="wishList_shoppingCart_menuTab">
                    <div class="wish_cart_menuTab" id="wishList_menuTab">
                        <a href="">관심 상품</a>
                    </div>
                    <div class="wish_cart_menuTab" id="shoppingCart_menuTab">
                        <a href="<%=request.getContextPath()%>/mypageshoppingcart.me">장바구니</a>
                    </div>
                </div>
                <div id="wishList_productInfo_wrapper">
                    <div class="wishList_productInfo_flex">
                        <div class="wishList_productInfo_left">
                            <div class="wishList_productInfo_img">
                                <img src="/SMF_Project/resources/my/img/_W_ Nike Dunk Low Black_1.png" alt="" width="80px" height="80px">
                            </div>
                            <div class="wishList_productInfo_text">
                                <p class="wishList_productInfo_brand">Jordan</p>
                                <p class="wishList_productInfo_name">Jordan 4 x Nike SB Retro Pine Green</p>
                                <p class="wishList_productInfo_size">255</p>
                            </div>
                        </div>
                        <div class="wishList_productInfo_right">
                            <div class="wishList_productInfo_shoppingCart_div">
                                <a href="" >장바구니에 담기</a>
                            </div>
                            <div class="wishList_productInfo_delete_div">
                                <a href="" >삭제</a>
                            </div>
                        </div>
                    </div>
                    <div class="wishList_productInfo_flex">
                        <div class="wishList_productInfo_left">
                            <div class="wishList_productInfo_img">
                                <img src="/SMF_Project/resources/my/img/_W_ Nike Dunk Low Black_1.png" alt="" width="80px" height="80px">
                            </div>
                            <div class="wishList_productInfo_text">
                                <p class="wishList_productInfo_brand">Jordan</p>
                                <p class="wishList_productInfo_name">Jordan 4 x Nike SB Retro Pine Green</p>
                                <p class="wishList_productInfo_size">255</p>
                            </div>
                        </div>
                        <div class="wishList_productInfo_right">
                            <div class="wishList_productInfo_shoppingCart_div">
                                <a href="" >장바구니에 담기</a>
                            </div>
                            <div class="wishList_productInfo_delete_div">
                                <a href="" >삭제</a>
                            </div>
                        </div>
                    </div>
                    <div class="wishList_productInfo_flex">
                        <div class="wishList_productInfo_left">
                            <div class="wishList_productInfo_img">
                                <img src="/SMF_Project/resources/my/img/_W_ Nike Dunk Low Black_1.png" alt="" width="80px" height="80px">
                            </div>
                            <div class="wishList_productInfo_text">
                                <p class="wishList_productInfo_brand">Jordan</p>
                                <p class="wishList_productInfo_name">Jordan 4 x Nike SB Retro Pine Green</p>
                                <p class="wishList_productInfo_size">255</p>
                            </div>
                        </div>
                        <div class="wishList_productInfo_right">
                            <div class="wishList_productInfo_shoppingCart_div">
                                <a href="" >장바구니에 담기</a>
                            </div>
                            <div class="wishList_productInfo_delete_div">
                                <a href="" >삭제</a>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
</body>
</html>
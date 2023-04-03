<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="mypageHead.jsp"></jsp:include>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/my/css/mypageShoppingCart.css">
<meta charset="UTF-8">
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
                        <a href="<%=request.getContextPath()%>/mypagewishlist.me">관심 상품</a>
                    </div>
                    <div class="wish_cart_menuTab" id="shoppingCart_menuTab">
                        <a href="">장바구니</a>
                    </div>
                </div>
                <div id="shoppingCartList_wrapper">
                    <div class="shoppingCart_productInfo">
                        <div class="shoppingCart_productInfo_flexLeft">
                            <div class="shoppingCart_productInfo_checkbox">
                                <input type="checkbox" name="" id="">
                            </div>
                            <div class="shoppingCart_productInfo_img">
                                <img src="" alt="">
                            </div>
                            <div class="shoppingCart_productInfo_text">
                                <p></p>
                                <p></p>
                                <p></p>
                            </div>
                        </div>
                        <div class="shoppingCart_productInfo_flexRight">
                            <div class="shoppingCart_productInfo_price">
                                <span>가격: </span>
                                <span>1,000원</span>
                            </div>
                            <a href="">삭제</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
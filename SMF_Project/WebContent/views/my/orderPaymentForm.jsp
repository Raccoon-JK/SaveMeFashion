<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/SMF_Project/resources/my/css/orderPaymentForm.css">
<jsp:include page="mypageHead.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
    <h1>배송 / 결제</h1>
    <div id="orderPayment_wrapper">
        <div id="orderPayment_contentArea">
            <div class="orderPayment_div">
                <h5>상품 정보</h5>
                <div id="proudctInfo_flex">
                    <div id="productInfo_img">
                        <img src="../../resources/my/img/Adidas Gazelle Dark Green Cream White_1.png" alt="">
                    </div>
                    <div id="productInfo_text">
                        <strong class="product_brand">Nike</strong>
                        <p class="product_en">Jordan 4 x Nike SB Retro Pine Green</p>
                        <p class="product_ko">조던 4 x 나이키 SB 레트로 파인 그린</p>
                        <p class="product_size">245</p>
                    </div>
                </div>
            </div>
            <div class="orderPayment_div">
                <div id="orderAdress_title">
                    <h5>배송 주소</h5>
                    <a href="">변경</a>
                </div>
                <div id="orderAddress_area">
                    <div>
                        <span class="orderAddress_title">받는 분</span>
                        <span class="orderAddress_desc">와우이</span>
                    </div>
                    <div>
                        <span class="orderAddress_title">연락처</span>
                        <span class="orderAddress_desc">010-0000-0000</span>
                    </div>
                    <div>
                        <span class="orderAddress_title">배송 주소</span>
                        <span class="orderAddress_desc">서울 강북서구 강북서로 99길 28</span>
                    </div>
                </div>
            </div>
            <div class="orderPayment_div" id="orderPayment_point">
                <div id="orderPoint_title">
                    <h5>포인트</h5>
                    <span><a href="#">모두 사용</a></span>
                </div>
                <input type="number" id="pointInputBox">
                <span>보유 포인트</span>
                <span>0P</span>
            </div>
            <div class="orderPayment_div">
                <h5>결제 방법</h5>
                <div id="enrollment_orderPayment">
                    <p>등록된 카드</p>
                    <span id="enrollment_cardNum">1564X-895X-15X5-192X</span>
                    <span id="enrollment_cardDate">MM/YY</span>
                    <input type="number" id="paymentInputBox" placeholder="비밀번호 앞 2자리" oninput="numLimit(this)">
                </div>
                <div>
                    <p>일반 결제</p>
                    <div>
                        <span>토스 페이</span>
                    </div>
                </div>
            </div>
            <div class="orderPayment_div">
                <h5>최종 주문 정보</h5>
                <div>
                    
                </div>
            </div>
        </div>
    </div>
    <script>
        function numLimit(pwdLimit){
            if(pwdLimit.value.length > 2){
                pwdLimit.value = pwdLimit.value.substr(0, 2);
            }
        }
    </script>
</body>
</html>
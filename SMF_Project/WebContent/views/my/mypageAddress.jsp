<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="mypageHead.jsp"></jsp:include>
<link rel="stylesheet" href="/SMF_Project/resources/my/css/mypageAddress.css">
<title>Insert title here</title>
</head>
<body>
    <div class="modal fade" id="addressAdd" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="ModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="ModalLabel">새 주소 추가</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                    <form action="<%=request.getContextPath()%>/addrinsert.me" method="post">
		                <div class="modal-body">
	                        <label for="name">이름</label>
	                        <div class="input_box">
	                            <input type="text" name="name" placeholder="수령인의 이름">
	                        </div>
	                        <label for="phone">휴대폰 번호</label>
	                        <div class="input_box">
	                            <input type="text" name="phone" placeholder="- 없이 입력">
	                        </div>
	                        <label for="postcode">우편번호</label>
	                        <div class="input_box" id="postcode_wrapper">
	                            <input type="text" name="postcode" id="postcode" placeholder="우편 번호를 검색하세요">
	                            <button type="button" onclick="daumPostcodeBtn();">우편번호 검색</button>
	                        </div>
	                        <label for="address">주소</label>
	                        <div class="input_box">
	                            <input type="text" name="address" id="roadAddr" placeholder="우편 번호 검색후 자동입력 됩니다." readonly>
	                        </div>
	                        <label for="detailed_address">상세 주소</label>
	                        <div class="input_box">
	                            <input type="text" name="detailedAddress" placeholder="건물, 아파트, 동/호수 입력">
	                        </div>
                		</div>
               		 <div class="modal-footer">
                    	<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
                    	<button type="submit" class="btn btn-primary" id="addrSave">저장</button>
                	</div>
            	</form>
            </div>
        </div>
    </div>
    <div id="mypage_wrapper">
	    <jsp:include page="mypageMenu.jsp"></jsp:include>
        <div id="mypage_content_wrapper">
            <div id="mypage_title">
                <p id="title" style="display: inline-block;">주소록</p>
                <button type="button" data-toggle="modal" data-target="#addressAdd">새 주소 추가</button>
            </div>
            <div id="mypage_content">
            	<div id="address_wrapper">
	                <div class="address_area" id="default_address">
	                    <p class="addrName">${addrDefault.receiver}</p>
	                    <p>${addrDefault.phone}</p>
	                    <p>(${addrDefault.postcode}) ${addrDefault.address}</p>
	                </div>
	                <div id="addressLine"></div>
             		<c:forEach var="list" items="${addrList}">
	  	                <div class="address_area">
		                    <p class="addrName">${list.receiver}</p>
		                    <p>${list.phone}</p>
		                    <p>(${list.postcode}) ${list.address}</p>
		                </div>
               		</c:forEach>
                </div>
            </div>
        </div>
    </div>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="/SMF_Project/resources/my/javascript/daum_postcode.js"></script>
    <script></script>
</body>
</html>
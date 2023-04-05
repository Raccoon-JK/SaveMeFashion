<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="mypageHead.jsp"></jsp:include>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div id="mypage_wrapper">
    	<jsp:include page="mypageMenu.jsp"></jsp:include>
    	<div id="mypage_content_wrapper">
            <div id="mypage_title">
                <p id="title" style="display: inline-block;">구매 내역</p>
            </div>
            <div id="mypage_content">
            </div>
        </div>
    </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../resources/my/css/mypageInfo.css">
<jsp:include page="mypageHead.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
	<div id="mypage_wrapper">
		<jsp:include page="mypageMenu.jsp"></jsp:include>
		<div id="mypage_content_wrapper">
            <div id="mypage_title">
            	<p>내 프로필 정보</p>
            </div>
			<div id="mypage_content">
				<div id="mypageInfo_img">
					<img alt="" src="../../resources/my/img/하기싫어.jpg">
					<a class="mypageBtn">변경</a>
				</div>
				<div id="mypageInfo_content">
					<div id="mypageInfo_content_left">
						<div class="Personal_info mypageInfo_class">
							<h5>개인정보</h5>
							<p>이름</p>
							<input class="inputBox" type="text">
							<button type="button">변경</button>
						</div>
						<div class="Personal_info mypageInfo_class">
							<p>생년월일</p>
							<input class="inputBox" type="text">
							<button type="button">변경</button>
						</div>
						<div class="Personal_info mypageInfo_class">
							<p>핸드폰</p>
							<input class="inputBox" type="text">
							<button type="button">변경</button>
						</div>
						<div class="Personal_info mypageInfo_class">
							<p>이메일</p>
							<input class="inputBox" type="text">
							<button type="button">변경</button>
						</div>
						
					</div>
					<div id="mypageInfo_content_right">
						<div id="mypageInfo_loginInfo">
							<div class="login_info mypageInfo_class">
								<h5>로그인 정보</h5>
								<p>아이디</p>
								<input class="inputBox" type="text">
								<button type="button">변경</button>
							</div>
							<div class="login_info mypageInfo_class">
								<p>비밀번호</p>
								<input class="inputBox" type="password">
								<button type="button">변경</button>
							</div>
						</div>
						<div class="mypageInfo_class" id="Agree_to_receiveInfo">
							<h5>정보 수신 동의</h5>
							<p>이메일</p>
							<div id="agree_radio_box">
								<label for="agree_radio">수신 동의</label>
								<input type="radio" name="receiveInfo" id="agree_radio" value="agree">
								<label for="disagree_radio">수신 거부</label>
								<input type="radio" name="receiveInfo" id="disagree_radio" value="disagree">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
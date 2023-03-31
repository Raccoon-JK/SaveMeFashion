<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../resources/my/css/mypageAccountsCard.css">
<jsp:include page="mypageHead.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
	<div id="mypage_wrapper">
		<jsp:include page="mypageMenu.jsp"></jsp:include>
		<div id="mypage_content_wrapper">
			<div id="mypage_title">
				<p>계좌 및 카드 관리</p>
			</div>
			<div id="mypage_content">
				<div id="accounts_card">
				<div id="settlement_accounts">
					<h5>정산 계좌</h5>
					<div>
						<p>은행명</p>
						<input type="text" class="inputBox" placeholder="은행을 선택하세요">
					</div>
					<div>
						<p>계좌번호</p>
						<input type="text" class="inputBox" placeholder="- 없이 입력하세요">
					</div>
					<div>
						<p>예금주</p>
						<input type="text" class="inputBox" placeholder="예금주명을 정확히 입력하세요">
					</div>
				</div>
					<div id="manage_Card">
						<h5>카드 관리</h5>
						<div>
							<p>카드번호</p>
							<input type="text" class="inputBox" placeholder="- 없이 입력하세요">
						</div>
						<div>
							<p>카드 비밀번호</p>
							<input type="text" class="inputBox" placeholder="앞 2자리">
						</div>
						<div>
							<p>카드 유효기간</p>
							<input type="text" class="inputBox" placeholder="MM/YY">
						</div>
						<div>
							<p>CVC</p>
							<input type="text" class="inputBox" placeholder="3자리">
						</div>
					</div>
				</div>			
			</div>
		</div>
	</div>
</body>
</html>
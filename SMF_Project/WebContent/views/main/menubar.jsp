<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구해줘패션_메뉴바</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/views/main/css/menu.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/views/main/css/modal.css" type="text/css">

<style>

    .header{
        position:fixed;
        top: 0;
        left: 0;
        right: 0;
        z-index: 1000;
        background-color: white;
	    border-bottom: solid 1px rgb(231, 231, 231);
    }

    .header_box{
        height: 130px;
        max-width: 1280px;
        margin-left: auto;
        margin-right: auto;
    }
        
</style>
</head>
<body>
	<div class="modal">
      	<div class="modal_body">
			<div>
				<form method="" action="">
					<input class="searchBar" type="text" name="name"><input class="searchBtn" type="submit" value="검색">
				</form>
			</div>
			<div class="recommand">
				<div class="recTitle">추천 검색어</div>
				<ul>
					<li><span>구찌</span></li>
					<li><span>에르메스</span></li>
					<li><span>샤넬</span></li>
					<li><span>아디다스</span></li>
					<li><span>나이키</span></li>
				</ul>
			</div>
			<div class="best">
				<div class="bestTitle">인기 검색어</div>
				<ul>
					<li><span>1</span><span>구찌</span></li>
					<li><span>2</span><span>구찌</span></li>
					<li><span>3</span><span>구찌</span></li>
					<li><span>4</span><span>구찌</span></li>
					<li><span>5</span><span>구찌</span></li>
					<li><span>6</span><span>구찌</span></li>
					<li><span>7</span><span>구찌</span></li>
					<li><span>8</span><span>구찌</span></li>
					<li><span>9</span><span>구찌</span></li>
					<li><span>10</span><span>구찌</span></li>
					<li><span>11</span><span>구찌</span></li>
					<li><span>12</span><span>구찌</span></li>
					<li><span>13</span><span>구찌</span></li>
					<li><span>14</span><span>구찌</span></li>
					<li><span>15</span><span>구찌</span></li>
					<li><span>16</span><span>구찌</span></li>
					<li><span>17</span><span>구찌</span></li>
					<li><span>18</span><span>구찌</span></li>
					<li><span>19</span><span>구찌</span></li>
					<li><span>20</span><span>구찌</span></li>
				</ul>
			</div>
			<div></div>
		</div>
    </div>
    <div class="header">
        <div class="header_box">
            <div class="header_top">
                <div class="top_inner">
                    <ul class="top_list">
                        <li class="top_item"><a href="">고객센터</a></li>
                        <li class="top_item"><a href="">관심상품</a></li>    
                        <li class="top_item"><a href="">로그인</a></li>
                        <li><a href=""><img id="notice" src="${pageContext.request.contextPath}/resources/main/bell_icon.png"></a></li>
                    </ul>
                </div>
            </div>
            <div class="header_main">
                <div class="main_inner">
                    구해줘패션(로고 삽입 예정)
                </div>
                <div class="gnb_area">
                    <nav class="gnb">
                        <ul class="gnb_list">
                            <li><a href="">DRESS ROOM</a></li>
                            <li><a href="">MY</a></li>
                            <li><button class="btn-open-popup"" type="button"><img id="search" src="${pageContext.request.contextPath}/resources/main/search_icon.png"></button></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="tab_area">
                <ul>
                	<li><a href=""><span>HOME</span></a></li>
                    <li><a href=""><span>STYLE</span></a></li>
                    <li><a href=""><span>SHOP</span></a></li>
                    <li><a href=""><span>기획전</span></a></li>
                </ul>
            </div>
        </div>
    </div>
    
    <script type="text/javascript" src="${pageContext.request.contextPath}/views/main/js/modal.js"></script>

</body>
</html>
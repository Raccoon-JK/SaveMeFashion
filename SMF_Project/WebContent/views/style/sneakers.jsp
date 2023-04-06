<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KREAM 카테고리</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/style/카테고리.css" />
  </head>
  <body>
    <header>
      <div class="headerwrap">
        <div class="headertop">
          <ul>
            <li>
              <a href="">고객센터</a>
            </li>
            <li>
              <a href="">관심상품</a>
            </li>
            <li>
              <a href="">로그인</a>
            </li>
          </ul>
        </div>
        <div class="headermain">
          <div class="hm-logo"></div>
          <div class="hm-menu"></div>
        </div>
        <div class="headerbottom">
          <a href="<%= contextPath %>/follow.me"><span>팔로잉</span></a>
          <a href="<%= contextPath %>"><span>발견</span></a>
          <a href=""><span>스니커즈</span></a>
          <a href=""><span>럭셔리</span></a>
          <a href=""><span>의류</span></a>
          <a href=""><span>가방</span></a>
          <a href=""><span>악세서리</span></a>
        </div>
      </div>
      
    </header>

    <content>
      <div class="ct-btncontainer">
        <button type="button" class="btn btn-dark">전체</button>
        <button type="button" class="btn btn-light">나이키</button>
        <button type="button" class="btn btn-light">아디다스</button>
        <button type="button" class="btn btn-light">아식스</button>
        <button type="button" class="btn btn-light">미하라 야스히로</button>
        <button type="button" class="btn btn-light">뉴발란스</button>
        <button type="button" class="btn btn-light">살로몬</button>
        <button type="button" class="btn btn-light">컨버스</button>
      </div>
      
      
      <div class="contentwrap">
        
      
        <div class="ct-sort">
          <a href="<%= contextPath %>/styleInsert.me" class="style-insert">#스타일 등록</a>
          <ul>
            <li>
              <a href="" style="font-weight: bold;">날짜별</a>
            </li>
            <li>
              <a href="">인기순</a>
            </li>
            <li>
              <a href="">최신순</a>
            </li>
          </ul>
        </div>
        <div class="ct-feedcontainer">
          <div class="feedwrap">
            <div class="feedimg">
              <img src="resources/style/캡처1.PNG" />
            </div>
          </div>
          <div class="feedwrap">
            <div class="feedimg">
              <img src="resources/style/캡처1.PNG" />
            </div>
          </div>
          <div class="feedwrap">
            <div class="feedimg">
              <img src="resources/style/캡처1.PNG" />
            </div>
          </div>
          <div class="feedwrap">
            <div class="feedimg">
              <img src="resources/style/캡처1.PNG" />
            </div>
          </div>
          <div class="feedwrap">
            <div class="feedimg">
              <img src="resources/style/캡처1.PNG" />
            </div>
          </div>
          <div class="feedwrap">
            <div class="feedimg">
              <img src="resources/style/캡처1.PNG" />
            </div>
          </div>
          <div class="feedwrap">
            <div class="feedimg">
              <img src="resources/style/캡처1.PNG" />
            </div>
          </div>
          <div class="feedwrap">
            <div class="feedimg">
              <img src="resources/style/캡처1.PNG" />
            </div>
          </div>
          <div class="feedwrap">
            <div class="feedimg">
              <img src="resources/style/캡처1.PNG" />
            </div>
          </div>
          <div class="feedwrap">
            <div class="feedimg">
              <img src="resources/style/캡처1.PNG" />
            </div>
          </div>
        </div>
      </div>
    </content>

    <foorter>
      <div class="moveTopBtn">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up-circle" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M1 8a7 7 0 1 0 14 0A7 7 0 0 0 1 8zm15 0A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-7.5 3.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V11.5z"/>
          </svg>
      </div>

      <script>

          const $topBtn = document.querySelector(".moveTopBtn");

          // 버튼 클릭 시 맨 위로 이동
          $topBtn.onclick = () => {
          window.scrollTo({ top: 0 });  
          }
      </script>
    </foorter>
  </body>
</html>
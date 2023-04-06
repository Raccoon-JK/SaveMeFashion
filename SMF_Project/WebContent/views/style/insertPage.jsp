<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/style/게시물등록.css" />
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
      </div>
    </header>

    <content>
        <div class="noticewrap1">
          <div class="insertnotice">
            <div class="insert-btnwrap">
              <a href="<%= contextPath %>">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="close-btn" viewBox="0 0 16 16">
                  <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
                </svg>
              </a>
              <div class="insert-btn">
                <button type="submit" class="submit-btn">등록</button>
              </div>
            </div>
            <div class="insert-header">
              <h2>당신의 STYLE 을 공유해보세요 !</h2>
            </div>
                
            <table>
              <tr>
                <div class="uproadfilewrap">
                    <button id="open" type="button">
                      <svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
                        <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                        <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                      </svg>
                    </button>
                </div>
              </tr>
              

              <div class="notice-content">
                  <textarea style="width: 500px; height: 300px;" placeholder="#아이템과 #스타일을 공유해보세요!"></textarea>
              </div>
              <div class="fc-tag">
                  <span class="tag-link">
                      <button type="button" class="btn btn-dark">
                        <a class="hashtag" href="https://kream.co.kr/social/tags/오늘뭐입지">#오늘뭐입지</a>
                      </button>
                      <button type="button" class="btn btn-dark">
                        <a class="hashtag" href="https://kream.co.kr/social/tags/KREAM스타일">#KREAM스타일</a>
                      </button>
                      <button type="button" class="btn btn-dark">
                        <a class="hashtag" href="https://kream.co.kr/social/tags/아디다스">#아디다스</a>
                      </button>
                      <button type="button" class="btn btn-dark">
                        <a class="hashtag" href="https://kream.co.kr/social/tags/오늘뭐입지">#오늘뭐입지</a>
                      </button>
                      <button type="button" class="btn btn-dark">
                        <a class="hashtag" href="https://kream.co.kr/social/tags/KREAM스타일">#KREAM스타일</a>
                      </button>
                      <button type="button" class="btn btn-dark">
                        <a class="hashtag" href="https://kream.co.kr/social/tags/아디다스">#아디다스</a>
                      </button>
                  </span>
              </div>
            </table>
          </div>
        </div>
        <div class="noticewrap2">
            <div class="insertnotice2">
                <div class="uproad-img">
                    <img src="resources/style/a_7350c375e3a1458f96e16223e2310cc3.webp">
                </div>
                <div class="uproad-img">
                  <img src="resources/style/a_b2f594eb104a44c9b3b6f2286771f221.webp">
                </div>
            </div>
            <div class="item-tag">
              <button id="open2" type="submit" style="border-radius: 100%; border: 0 gray;">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-tag-fill" viewBox="0 0 16 16">
                  <path d="M2 1a1 1 0 0 0-1 1v4.586a1 1 0 0 0 .293.707l7 7a1 1 0 0 0 1.414 0l4.586-4.586a1 1 0 0 0 0-1.414l-7-7A1 1 0 0 0 6.586 1H2zm4 3.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
                </svg>
              </button>
              <span style="font-weight: bold;">상품태그</span>
            </div>
        </div>
        

        <div class="modal-wrapper" style="display: none">
          <div class="modal">
            <div class="close-wrapper">
              <button id="close">닫기</button>
            </div>
            <div class="modal-title">스타일 이미지 올리기</div>
            <input type="file">
          </div>
        </div>
        

        <div class="modal-wrapper2" style="display: none">
          <div class="modal">
            <div class="close-wrapper">
              <button id="close2">닫기</button>
            </div>
            <div class="modal-title">상품태그하기</div>
            <div class="buylist">구매내역</div>
            <p>나이키 에어포스</p>
            <p>조던 1로우 그레이</p>
            <p>뉴발란스 992</p>
            <div class="iteminsert">
              <button type="submit" class="submit-btn" style="margin-right: 100px;">등록</button>
            </div>
          </div>
        </div>

        <script>
          const open = document.getElementById("open");
          const open2 = document.getElementById("open2");
          const close = document.getElementById("close");
          const close2 = document.getElementById("close2");
    
          const modal = document.querySelector(".modal-wrapper");
          const modal2 = document.querySelector(".modal-wrapper2");
    
          open.onclick = () => {
            modal.style.display = "flex";
          };

          open2.onclick = () => {
            modal2.style.display = "flex";
          };
    
          close.onclick = () => {
            modal.style.display = "none";
          };

          close2.onclick = () => {
            modal2.style.display = "none";
          };
        </script>

        <br><br><br><br><br><br>
    </content>
    <foorter> </foorter>
  </body>
</html>
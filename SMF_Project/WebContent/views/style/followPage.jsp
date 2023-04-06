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
<link rel="stylesheet" href="resources/style/팔로잉.css" />
<style>
	 .moveTopBtn {
          position: fixed;
          bottom: 1rem;
          right: 1rem;
          width: 50px;
          height: 50px;
          color: #fff;
      }
  
      .moveTopBtn svg{
          width: 100%;
          height: 100%;
          color: black;
      }
</style>
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
            <a href=""><span>팔로잉</span></a>
            <a href="<%= contextPath %>" class="underline"><span>발견</span></a>
            <a href="<%= contextPath %>/snekers.do" class="underline"><span>스니커즈</span></a>
            <a href=""><span>럭셔리</span></a>
            <a href=""><span>의류</span></a>
            <a href=""><span>가방</span></a>
            <a href=""><span>악세서리</span></a>
          </div>
      </div>
    </header>

    <content>
      <div class="feedcontainer">
        <div class="feedwrap">
          <div class="feeduser">
            <a href="<%= contextPath %>/userPage.me">
              <div class="userimg">
                <img src="resources/style/p_fa94223fea044656b2f41d55cbcb334c.jpeg" />
              </div>
              <div class="userinfo">
                <p class="userid">yxxhzzi</p>
                <p class="uproadtime">어제</p>
              </div>
            </a>
            <div class="userfollow"><button type="button"  class="follow-btn">팔로잉</button></div>
          </div>
          <div class="feedimg">
            <img src="resources/style/p_134dc9f98d9e41afa5bdc45a5a18869d.webp" />
          </div>
        </div>
        <div class="feedproduct">
          <div class="product-title">
            <span class="title-txt"
              >상품&nbsp;태그<strong class="num">2</strong>개</span
            >
          </div>
          <div class="product-list">
            <ul class="itemwrap">
              <li class="item">
                <a href="">
                  <div class="product" background-color: rgb(241, 241, 234);>
                    <img
                      src="resources/style/a_7350c375e3a1458f96e16223e2310cc3.webp"
                    />
                  </div>
                  <div class="product-info">
                    <p class="product-name">
                      (W) Adidas Sambarose White Black Gum
                    </p>
                    <div class="price-box">
                      <span class="amount">120,000</span>
                      <span class="unit">원</span>
                    </div>
                  </div>
                </a>
              </li>
              <li class="item">
                <a href="">
                  <div class="product" background-color: rgb(241, 241, 234);>
                    <img
                      src="resources/style/a_b2f594eb104a44c9b3b6f2286771f221.webp"
                    />
                  </div>
                  <div class="product-info">
                    <p class="product-name">
                      Gucci Interlocking G Pendant Necklace Silver
                    </p>
                    <div class="price-box">
                      <span class="amount">361,000</span>
                      <span class="unit">원</span>
                    </div>
                    
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="feedcontent">
          <div class="fc-btn">
            <div class="btn-bind">
              <a href="" class="btn-like">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16">
                  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                  <path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
                </svg>
              </a>
              <a id="open">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
                  <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
                </svg>
              </a>
            </div>
            <a href="" class="btn-share">
              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-bar-up" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M8 10a.5.5 0 0 0 .5-.5V3.707l2.146 2.147a.5.5 0 0 0 .708-.708l-3-3a.5.5 0 0 0-.708 0l-3 3a.5.5 0 1 0 .708.708L7.5 3.707V9.5a.5.5 0 0 0 .5.5zm-7 2.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 0 1h-13a.5.5 0 0 1-.5-.5z"/>
              </svg>  
            </a>
          </div>
        </div>
        <div class="fc-count">
          <a href="" class="like-count">공감&nbsp;<strong>68</strong>개</a>
        </div>
        <div class="fc-tag">
          <span class="tag-link">
            <span class="txt">
             <a class="hashtag" href="https://kream.co.kr/social/tags/오늘뭐입지">#오늘뭐입지</a>
             <a class="hashtag" href="https://kream.co.kr/social/tags/KREAM스타일">#KREAM스타일</a>
             <a class="hashtag" href="https://kream.co.kr/social/tags/아디다스">#아디다스</a>
            </span>
          </span>
        </div>
        <div class="fc-comment">
          <div class="comment-area">
            <a href="" class="comment-count"> 댓글 <strong>2</strong>개 </a>
          </div>
          <div class="comment-list">
            <div class="comment-box">
              <a href="" class="profile-link">
                <img src="resources/style/account_img_default.png">
              </a>
              <div class="comment-detail">
                <div class="main">
                  <span class="user-name">pahzdw</span>
                  <span class="comment-txt">바지 정보 여쭤봐도 될까요?</span>
                </div>
                <div class="sub">
                  <span class="upload-time">어제</span>
                </div>
              </div>
              <div class="btn-like">
                <img src="resources/style/좋아요.PNG">
              </div>
            </div>
          </div>
        </div>
        <div class="feedwrap">
          <div class="feeduser">
            <a href="<%= contextPath %>/userPage.me">
              <div class="userimg">
                <img src="resources/style/p_fa94223fea044656b2f41d55cbcb334c.jpeg" />
              </div>
              <div class="userinfo">
                <p class="userid">yxxhzzi</p>
                <p class="uproadtime">어제</p>
              </div>
            </a>
            <div class="userfollow"><button type="button"  class="follow-btn">팔로잉</button></div>
          </div>
          <div class="feedimg">
            <img src="resources/style/p_134dc9f98d9e41afa5bdc45a5a18869d.webp" />
          </div>
        </div>
        <div class="feedproduct">
          <div class="product-title">
            <span class="title-txt"
              >상품&nbsp;태그<strong class="num">2</strong>개</span
            >
          </div>
          <div class="product-list">
            <ul class="itemwrap">
              <li class="item">
                <a href="">
                  <div class="product" background-color: rgb(241, 241, 234);>
                    <img
                      src="resources/style/a_7350c375e3a1458f96e16223e2310cc3.webp"
                    />
                  </div>
                  <div class="product-info">
                    <p class="product-name">
                      (W) Adidas Sambarose White Black Gum
                    </p>
                    <div class="price-box">
                      <span class="amount">120,000</span>
                      <span class="unit">원</span>
                    </div>
                  </div>
                </a>
              </li>
              <li class="item">
                <a href="">
                  <div class="product" background-color: rgb(241, 241, 234);>
                    <img
                      src="resources/style/a_b2f594eb104a44c9b3b6f2286771f221.webp"
                    />
                  </div>
                  <div class="product-info">
                    <p class="product-name">
                      Gucci Interlocking G Pendant Necklace Silver
                    </p>
                    <div class="price-box">
                      <span class="amount">361,000</span>
                      <span class="unit">원</span>
                    </div>
                    
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="feedcontent">
          <div class="fc-btn">
            <div class="btn-bind">
              <a href="" class="btn-like">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16">
                  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                  <path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
                </svg>
              </a>
              <a id="open2">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
                  <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
                </svg>
              </a>
            </div>
            <a href="" class="btn-share">
              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-bar-up" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M8 10a.5.5 0 0 0 .5-.5V3.707l2.146 2.147a.5.5 0 0 0 .708-.708l-3-3a.5.5 0 0 0-.708 0l-3 3a.5.5 0 1 0 .708.708L7.5 3.707V9.5a.5.5 0 0 0 .5.5zm-7 2.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 0 1h-13a.5.5 0 0 1-.5-.5z"/>
              </svg>  
            </a>
          </div>
        </div>
        <div class="fc-count">
          <a href="" class="like-count">공감&nbsp;<strong>68</strong>개</a>
        </div>
        <div class="fc-tag">
          <span class="tag-link">
            <span class="txt">
             <a class="hashtag" href="https://kream.co.kr/social/tags/오늘뭐입지">#오늘뭐입지</a>
             <a class="hashtag" href="https://kream.co.kr/social/tags/KREAM스타일">#KREAM스타일</a>
             <a class="hashtag" href="https://kream.co.kr/social/tags/아디다스">#아디다스</a>
            </span>
          </span>
        </div>
        <div class="fc-comment">
          <div class="comment-area">
            <a href="" class="comment-count"> 댓글 <strong>2</strong>개 </a>
          </div>
          <div class="comment-list">
            <div class="comment-box">
              <a href="" class="profile-link">
                <img src="resources/style/account_img_default.png">
              </a>
              <div class="comment-detail">
                <div class="main">
                  <span class="user-name">pahzdw</span>
                  <span class="comment-txt">바지 정보 여쭤봐도 될까요?</span>
                </div>
                <div class="sub">
                  <span class="upload-time">어제</span>
                </div>
              </div>
              <div class="btn-like">
                <img src="resources/style/좋아요.PNG">
              </div>
            </div>
          </div>
        </div>
        <div class="feedwrap">
          <div class="feeduser">
            <a href="<%= contextPath %>/userPage.me">
              <div class="userimg">
                <img src="resources/style/p_fa94223fea044656b2f41d55cbcb334c.jpeg" />
              </div>
              <div class="userinfo">
                <p class="userid">yxxhzzi</p>
                <p class="uproadtime">어제</p>
              </div>
            </a>
            <div class="userfollow"><button type="button"  class="follow-btn">팔로잉</button></div>
          </div>
          <div class="feedimg">
            <img src="resources/style/p_134dc9f98d9e41afa5bdc45a5a18869d.webp" />
          </div>
        </div>
        <div class="feedproduct">
          <div class="product-title">
            <span class="title-txt"
              >상품&nbsp;태그<strong class="num">2</strong>개</span
            >
          </div>
          <div class="product-list">
            <ul class="itemwrap">
              <li class="item">
                <a href="">
                  <div class="product" background-color: rgb(241, 241, 234);>
                    <img
                      src="resources/style/a_7350c375e3a1458f96e16223e2310cc3.webp"
                    />
                  </div>
                  <div class="product-info">
                    <p class="product-name">
                      (W) Adidas Sambarose White Black Gum
                    </p>
                    <div class="price-box">
                      <span class="amount">120,000</span>
                      <span class="unit">원</span>
                    </div>
                  </div>
                </a>
              </li>
              <li class="item">
                <a href="">
                  <div class="product" background-color: rgb(241, 241, 234);>
                    <img
                      src="resources/style/a_b2f594eb104a44c9b3b6f2286771f221.webp"
                    />
                  </div>
                  <div class="product-info">
                    <p class="product-name">
                      Gucci Interlocking G Pendant Necklace Silver
                    </p>
                    <div class="price-box">
                      <span class="amount">361,000</span>
                      <span class="unit">원</span>
                    </div>
                    
                  </div>
                </a>
              </li>
            </ul>
          </div>
        </div>
        <div class="feedcontent">
          <div class="fc-btn">
            <div class="btn-bind">
              <a href="" class="btn-like">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16">
                  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                  <path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
                </svg>
              </a>
              <a id="open3">
                <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
                  <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
                </svg>
              </a>
            </div>
            <a href="" class="btn-share">
              <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-arrow-bar-up" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M8 10a.5.5 0 0 0 .5-.5V3.707l2.146 2.147a.5.5 0 0 0 .708-.708l-3-3a.5.5 0 0 0-.708 0l-3 3a.5.5 0 1 0 .708.708L7.5 3.707V9.5a.5.5 0 0 0 .5.5zm-7 2.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 0 1h-13a.5.5 0 0 1-.5-.5z"/>
              </svg>  
            </a>
          </div>
        </div>
        <div class="fc-count">
          <a href="" class="like-count">공감&nbsp;<strong>68</strong>개</a>
        </div>
        <div class="fc-tag">
          <span class="tag-link">
            <span class="txt">
             <a class="hashtag" href="https://kream.co.kr/social/tags/오늘뭐입지">#오늘뭐입지</a>
             <a class="hashtag" href="https://kream.co.kr/social/tags/KREAM스타일">#KREAM스타일</a>
             <a class="hashtag" href="https://kream.co.kr/social/tags/아디다스">#아디다스</a>
            </span>
          </span>
        </div>
        <div class="fc-comment">
          <div class="comment-area">
            <a href="" class="comment-count"> 댓글 <strong>2</strong>개 </a>
          </div>
          <div class="comment-list">
            <div class="comment-box">
              <a href="" class="profile-link">
                <img src="resources/style/account_img_default.png">
              </a>
              <div class="comment-detail">
                <div class="main">
                  <span class="user-name">pahzdw</span>
                  <span class="comment-txt">바지 정보 여쭤봐도 될까요?</span>
                </div>
                <div class="sub">
                  <span class="upload-time">어제</span>
                </div>
              </div>
              <div class="btn-like">
                <img src="resources/style/좋아요.PNG">
              </div>
            </div>
          </div>
        </div>



        
        <div class="modal-wrapper" style="display: none">
          <div class="modal">
            <div class="close-wrapper">
              <button id="close" style="background-color: white; border: 0; cursor: pointer;">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                  <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
                </svg>
              </button>
            </div>
            <div class="modal-title">댓글</div>
            <p>댓글..댓글..</p>
    
          </div>
        </div>
        
        <div class="modal-wrapper2" style="display: none">
          <div class="modal">
            <div class="close-wrapper2">
              <button id="close2" style="background-color: white; border: 0; cursor: pointer;">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                  <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
                </svg>
              </button>
            </div>
            <div class="modal-title">댓글2</div>
            <p>댓글..댓글..</p>
    
          </div>
        </div>

        <div class="modal-wrapper3" style="display: none">
          <div class="modal">
            <div class="close-wrapper3">
              <button id="close3" style="background-color: white; border: 0; cursor: pointer;">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
                  <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
                </svg>
              </button>
            </div>
            <div class="modal-title">댓글3</div>
            <p>댓글..댓글..</p>
    
          </div>
        </div>
        
        <script>
           const open = document.getElementById("open");
          const open2 = document.getElementById("open2");
          const open3 = document.getElementById("open3");
          const close = document.getElementById("close");
          const close2 = document.getElementById("close2");
          const close3 = document.getElementById("close3");
          
    
          const modal = document.querySelector(".modal-wrapper");
          const modal2 = document.querySelector(".modal-wrapper2");
          const modal3 = document.querySelector(".modal-wrapper3");
    
          open.onclick = () => {
            modal.style.display = "flex";
          };

          open2.onclick = () => {
            modal2.style.display = "flex";
          };

          open3.onclick = () => {
            modal3.style.display = "flex";
          };
    
          close.onclick = () => {
            modal.style.display = "none";
          };

          close2.onclick = () => {
            modal2.style.display = "none";
          };

          close3.onclick = () => {
            modal3.style.display = "none";
          };
          
        </script>

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
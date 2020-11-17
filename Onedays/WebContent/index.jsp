<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Welcome to OneDays</title>
    <link href="css/mainstyles.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <!-- 상단  -->
    <header>
        <h1>
            <a href="index.jsp" style="color: #8EBCBB" style="text-decoration:none">One Days</a>
        </h1>
        <div class="navbar">
            <div class="search">
                <input type="text" placeholder="검색어를 입력해주세요.">
                <button>검색</button>


            </div>
            <div class="dropdown">
                <ul>
                    <li>알림</li>
                    
                    <%
					if(session.getAttribute("mid") == null) {
					%>
						<li><a href="login.jsp" style="color: #8EBCBB" style="text-decoration:none">로그인</a>
	                    </li>
					<%
					} else{
					%>
					<li><%= session.getAttribute("mid") %>님
                        <ul>
                            <li><a href="myPage.jsp">마이페이지</a>
                                <li><a href="logout.jsp">로그아웃</a>
                        </ul>
                    </li>
 					<%
					}
					%>

                </ul>
            </div>
            <div style="clear: both;"></div>
        </div>


    </header>
    <!-- 메뉴  -->
    <input type="checkbox" id="menuicon">
    <label for="menuicon"> <span></span> <span></span> <span></span>
	</label>
    <div class="sidebar">
        <h1 class="category">카테고리</h1>
        <hr>
        <ul class="item">
            <li><a href="craftsCat.jsp">공예</a></li>
            <li><a href="cookCat.jsp">요리</a></li>
            <li><a href="instCat.jsp">악기</a></li>
            <li><a href="itCat.jsp">IT</a></li>
            <li><a href="activityCat.jsp">액티비티</a></li>
        </ul>

    </div>
    <br>



    <div class="section">
        <input type="radio" name="slide" id="slide01" checked>
        <input type="radio" name="slide" id="slide02">
        <input type="radio" name="slide" id="slide03">
        <div class="slidewrap">

            <ul class="slidelist">
                <!-- 슬라이드 영역 -->
                <li class="slideitem">
                    <a>
                        <div class="textbox">
                            <h3>첫번째 슬라이드</h3>
                            <p>첫번째 슬라이드 입니다.</p>
                        </div>
                        <img src="./slidebanner/slide.jpg">
                    </a>
                </li>
                <li class="slideitem">
                    <a>

                        <div class="textbox">
                            <h3>두번째 슬라이드</h3>
                            <p>두번째 슬라이드 입니다.</p>
                        </div>
                        <img src="./slidebanner/slide.jpg">
                    </a>
                </li>
                <li class="slideitem">
                    <a>

                        <div class="textbox">
                            <h3>세번째 슬라이드</h3>
                            <p>세번째 슬라이드 입니다.</p>
                        </div>
                        <img src="./slidebanner/slide.jpg">
                    </a>
                </li class="slideitem">

                <!-- 좌,우 슬라이드 버튼 -->
                <div class="slide-control">
                    <div>
                        <label for="slide03" class="left"></label>
                        <label for="slide02" class="right"></label>
                    </div>
                    <div>
                        <label for="slide01" class="left"></label>
                        <label for="slide03" class="right"></label>
                    </div>
                    <div>
                        <label for="slide02" class="left"></label>
                        <label for="slide01" class="right"></label>
                    </div>
                </div>

            </ul>
            <!-- 페이징 -->
            <ul class="slide-pagelist">
                <li><label for="slide01"></label></li>
                <li><label for="slide02"></label></li>
                <li><label for="slide03"></label></li>
            </ul>
        </div>
    </div>


    <!--이상형 클래스-->
    <div class="ideal_type"><a href="idealWorldCup.jsp">당신을 위한 맞춤형 클래스를 알아보세요!</a></div>

    <div class="pro_body">
        <h2> 추천 클래스 </h2>
        <br>
        <ul class="list">
            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test1.png" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
            </li>

            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test2.png" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
            </li>

            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test3.png" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
                <div class="mark">
                    <div>HOT</div>
                </div>
            </li>
            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test.jpg" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
                <div class="mark">
                    <div>HOT</div>
                </div>

            </li>
        </ul>

        <div style="clear: both;"></div>
        <br><br><br>

        <h2> 인기 클래스 </h2>
        <br>
        <ul class="list">
            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test1.png" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
            </li>

            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test2.png" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
            </li>

            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test3.png" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
                <div class="mark">
                    <div>HOT</div>
                </div>
            </li>
            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test.jpg" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
                <div class="mark">
                    <div>HOT</div>
                </div>

            </li>
        </ul>

        <div style="clear: both;"></div>
        <br><br><br>

        <h2> 마감임박 클래스 </h2>
        <br>
        <ul class="list">
            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test1.png" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
            </li>

            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test2.png" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
            </li>

            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test3.png" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
                <div class="mark">
                    <div>HOT</div>
                </div>
            </li>
            <li>
                <a href="#a" class="lista">
                    <img src="classimg/test.jpg" alt="" class="img">
                    <h3>릴리의 캘리그라피 클래스</h3>
                    <p>30,000원</p>
                    <h4 style="padding: 0 5px 5px;">서울</h4>
                </a>
                <div class="mark">
                    <div>HOT</div>
                </div>

            </li>
        </ul>


    </div>


    <div style="clear: both;"></div>
    <br><br><br>

    <div id="footer">
        <div class="container">
            <div class="footer">
                <ul>
                    <li><a href="#a">사이트 도움말</a></li>
                    <li><a href="#a">사이트 이용약관</a></li>
                    <li><a href="#a">사이트 운영규칙</a></li>
                    <li><a href="#a">사이트 도움말</a></li>
                    <li><a href="#a">사이트 도움말</a></li>
                    <li><a href="#a">사이트 도움말</a></li>
                </ul>
                <address>
					Copyright&copy;Onedays.co.kr All Right Rederved
				</address>
            </div>
        </div>
    </div>
<!-- check  -->
</body>

</html>
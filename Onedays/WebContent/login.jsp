<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.ClassDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="css/mainstyles.css" rel="stylesheet" type="text/css">
<link href="css/style_login.css" rel="stylesheet" type="text/css">

<script>
        function popup(){
            var url = "notice.jsp";
            var name = "popup test";
            var option = "width = 500, height = 100, top = 100, left = 800, location = no"
            window.open(url, name, option);
        }
    </script>
</head>
<body>

	<!-- 상단  -->
	<header>
		<h1>
			<a href="index.jsp" style="color: #8EBCBB">One Days</a>
		</h1>
		<div class="navbar">
			<div class="dropdown">
				<ul>
					<li><a href = "javascript:popup()">알림</a></li>
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
		</div>

	</header>

	<!-- 메뉴  -->
	<input type="checkbox" id="menuicon">
	<label for="menuicon"> <span></span> <span></span> <span></span>
	</label>
	<div class="sidebar">
		<h1 class="category">카테고리</h1>
		<ul class="item">
			<li><a href="craftsCat.jsp">공예</a></li>
            <li><a href="cookCat.jsp">요리</a></li>
            <li><a href="instCat.jsp">악기</a></li>
            <li><a href="itCat.jsp">IT</a></li>
            <li><a href="activityCat.jsp">액티비티</a></li>
		</ul>

	</div>
	
	<% ClassDAO.closeClass(); %>
		
		<!-- 로그인  -->
		<div class="left">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<h2>로그인</h2>
			<br />
			<div class="login">
				<form method="post" action="doLogin">
				<div class="login_box">
					<input type="text" placeholder="User Id" name="mid" />
				</div>
				<div class="login_box">
					<input type="password" placeholder="PassWord" name="passwd" />
				</div>
				<input class="btn" type="submit" value="LOGIN" /> <br /> <br /> <a
					href="join.jsp" style="color: #808080" style="text-decoration:none">회원가입
				</a> <br />
	</form>
	</div>
	</div>

	<!-- 이미지 삽입  -->
	<div class="right">
		<div class="img">
			<img src="imgs/flower.png" width="650px" height=auto text-align=right>
		</div>
	</div>

</body>
</html>
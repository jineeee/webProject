<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Class WorldCup</title>
<link href="css/mainstyles.css" rel="stylesheet" type="text/css">
<link href="css/style_login.css" rel="stylesheet" type="text/css">
<link href="css/style_worldcup.css" rel="stylesheet" type="text/css">

<script>
	function popup() {
		var url = "notice.jsp";
		var name = "popup test";
		var option = "width = 500, height = 100, top = 100, left = 800, location = no"
		window.open(url, name, option);
	}
	
	function searchCheck(frm){
        //검색
        if(frm.keyWord.value ==""){
            alert("검색 단어를 입력하세요.");
            frm.keyWord.focus();
            return;
        }
        frm.submit();   
        location.href = "search.jsp";
    }
</script>
<style>
img {
	width: 500px;
	height: 500px;
}
</style>
</head>

<body>

	<!-- 상단  -->
	<header>
		<h1>
			<a href="index.jsp" style="color: #8EBCBB">One Days</a>
		</h1>
		<div class="navbar">
			<div class="search">
			<form name="serach" method ="post" action="search.jsp">
                <input type="text" name="keyWord" placeholder="검색어를 입력해주세요.">
				<input type="submit" value="검색" onclick="searchCheck(form)" />
            </form>
            </div>
			<div class="dropdown">
				<ul>
					<li><a href="javascript:popup()">알림</a></li>
					<%
						if (session.getAttribute("mid") == null) {
					%>
					<li><a href="login.jsp" style="color: #8EBCBB"
						style="text-decoration:none">로그인</a></li>
					<%
						} else {
					%>
					<li><%=session.getAttribute("mid")%>님
						<ul>
							<li><a href="myPage.jsp">마이페이지</a>
							<li><a href="logout.jsp">로그아웃</a>
						</ul></li>
					<%
						}
					%>

				</ul>

			</div>
		</div>

	</header>

	<!-- 메뉴 -->
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

	<!-- 이상형 월드컵  -->
	<br style="clear: both;">


	<div class="logo_div">
		<h1 style="text-align: center; padding: 5px; color: #808080;">클래스
			월드컵</h1> 
		
	</div>

	<div class="worldcup" style="margin-top:30px;
	margin-left:15em;">
		<p id="cal"></p>
		<img id="image" onclick="change(0)" > <img id="images"
			onclick="change(1)">
		<script>
			text = "";
			var images = [];
			var sImages = [];
			var cnt = 0;
			var num = 0;
			var sNum = 0;
			var cnt2 = 0;

			function upload() {

				for (i = 0; i < 16; i++) {
					images[i] = "worldcupimg/"+(i + 1) + ".png";
				}
				images.sort(function(a, b) {
					return 0.5 - Math.random()
				});
				showImg(num);
			}

			upload(0);

			function showImg(num) {
				document.getElementById('image').src = images[num];
				document.getElementById('images').src = images[num + 1];
				cnt2++;
			}

			function change(n) {
				if (cnt2 < 20) {
					cnt++;
					if (n == 0)
						sImages[sNum++] = images[num];
					else
						sImages[sNum++] = images[num + 1];
					num += 2;

					showImg(num);

					if (cnt == images.length / 2) {
						for (i = 0; i < sImages.length; i++) {
							images[i] = sImages[i];
							sImages[i] = null;
						}
						images.splice(cnt);
						cnt = 0;
						num = 0;
						sNum = 0;
						showImg(num); 
					}
				}
			}	
			document.getElementById('cal').innerHTML = text;
		</script>
	</div>
	<div class="stop" style="float:right;
	margin-right:30px;
	margin-bottom:20px;">
		<a href="index.jsp" style="text-dexoration:none; color: #8EBCBB;
	font-size:25px;">그만하기</a>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.ClassVO"
	import="java.util.ArrayList"%>
<!DOCTYPE html>
<html> 

<head>
<meta charset="UTF-8">
<title>원데이즈</title>
<link href="css/mainstyles.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">

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
</head>

<body>
	<jsp:include page="header.jsp" />
	<br>



	<div class="section">
		<input type="radio" name="slide" id="slide01" checked> <input
			type="radio" name="slide" id="slide02"> <input type="radio"
			name="slide" id="slide03">
		<div class="slidewrap">

			<ul class="slidelist">
				<!-- 슬라이드 영역 -->
				<li class="slideitem"><a>
						<div class="textbox">
						</div> <img src="./slidebanner/banner01.png">
				</a></li>
				<li class="slideitem"><a>

						<div class="textbox">
						</div> <img src="./slidebanner/banner02.png">
				</a></li>
				<li class="slideitem"><a>

						<div class="textbox">
						</div> <img src="./slidebanner/banner03.png">
				</a></li class="slideitem">

				<!-- 좌,우 슬라이드 버튼 -->
				<div class="slide-control">
					<div>
						<label for="slide03" class="left"></label> <label for="slide02"
							class="right"></label>
					</div>
					<div>
						<label for="slide01" class="left"></label> <label for="slide03"
							class="right"></label>
					</div>
					<div>
						<label for="slide02" class="left"></label> <label for="slide01"
							class="right"></label>
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
	<div class="ideal_type">
		<a href="idealWorldCup.jsp">당신을 위한 맞춤형 클래스를 알아보세요!</a>
	</div>

	<jsp:useBean id="dao" class="model.ClassDAO" />
	<%
	ArrayList<ClassVO> list = dao.getRecomendlist();
	ArrayList<ClassVO> list2 = dao.getPopularlist();
	ArrayList<ClassVO> list3 = dao.getEndlist();
	
	ArrayList<ClassVO> list4 = dao.getRegionlist(session.getAttribute("ur"));
	ArrayList<ClassVO> list5 = dao.getLikelist(session.getAttribute("user_idx"));
	ArrayList<ClassVO> list6 = dao.getApplylist(session.getAttribute("user_idx"));
	%>

	<h2 style="padding-left: 50px; padding-top: 50px;">추천 클래스</h2>

	<!--클래스 목록-->
	<table class="pro_body">
		<tr>
			<%
				for (ClassVO vo : list) {
			%>
			<td style="padding: 10px;">
				<li class="list"><a
					href="detail.jsp?classIdx=<%=vo.getClassIdx()%>" class="lista">
						<img
						src="${pageContext.request.contextPath}/uploadImg/<%=vo.getImage() %>"
						alt="" class="img">
						<h3><%=vo.getName()%>
							클래스
						</h3>
						<p><%=vo.getPrice()%>원
						</p> <%
						switch (vo.getClassRegionIdx()) {
  						case 1:
 						%>
							<h4 style="padding: 0 5px 5px;">서울</h4> <%
	 						break;
						case 2:
 						%>
							<h4 style="padding: 0 5px 5px;">경기</h4> <%
	 						break;
						case 3:
						%>
							<h4 style="padding: 0 5px 5px;">충청도</h4> <%
	 						break;
 						case 4:
 						%>
							<h4 style="padding: 0 5px 5px;">전라도</h4> <%
	 						break;
 						case 5:
 						%>
							<h4 style="padding: 0 5px 5px;">경상도</h4> <%
	 						break;
 						}
 						%>

				</a></li>
			</td>
			<%
				}
			%>

		</tr>
	</table>

	<h2 style="padding-left: 50px; padding-top: 50px;">인기 클래스</h2>

	<!--클래스 목록-->
	<table class="pro_body">
		<tr>
			<%
				for (ClassVO vo : list2) {
			%>
			<td style="padding: 10px;">
				<li class="list"><a
					href="detail.jsp?classIdx=<%=vo.getClassIdx()%>" class="lista">
						<img
						src="${pageContext.request.contextPath}/uploadImg/<%=vo.getImage() %>"
						alt="" class="img">
						<h3><%=vo.getName()%>
							클래스
						</h3>
						<p><%=vo.getPrice()%>원
						</p> <%
						switch (vo.getClassRegionIdx()) {
  						case 1:
 						%>
							<h4 style="padding: 0 5px 5px;">서울</h4> <%
 							break;
						case 2:
 						%>
							<h4 style="padding: 0 5px 5px;">경기</h4> <%
	 						break;
						case 3:
						%>
							<h4 style="padding: 0 5px 5px;">충청도</h4> <%
	 						break;
 						case 4:
 						%>
							<h4 style="padding: 0 5px 5px;">전라도</h4> <%
	 						break;
 						case 5:
 						%>
							<h4 style="padding: 0 5px 5px;">경상도</h4> <%
	 						break;
 						}
 						%>

				</a></li>
			</td>
			<%
				}
			%>
		</tr>
	</table>

	<h2 style="padding-left: 50px; padding-top: 50px;">마감임박 클래스</h2>

	<!--클래스 목록-->
	<table class="pro_body">
		<tr>
			<%
				for (ClassVO vo : list3) {
			%>
			<td style="padding: 10px;">
				<li class="list"><a
					href="detail.jsp?classIdx=<%=vo.getClassIdx()%>" class="lista">
						<img
						src="${pageContext.request.contextPath}/uploadImg/<%=vo.getImage() %>"
						alt="" class="img">
						<h3><%=vo.getName()%>
							클래스
						</h3>
						<p><%=vo.getPrice()%>원
						</p> <%
						switch (vo.getClassRegionIdx()) {
  						case 1:
 						%>
							<h4 style="padding: 0 5px 5px;">서울</h4> <%
 							break;
						case 2:
 						%>
							<h4 style="padding: 0 5px 5px;">경기</h4> <%
 							break;
						case 3:
						%>
							<h4 style="padding: 0 5px 5px;">충청도</h4> <%
	 						break;
 						case 4:
 						%>
							<h4 style="padding: 0 5px 5px;">전라도</h4> <%
	 						break;
 						case 5:
 						%>
							<h4 style="padding: 0 5px 5px;">경상도</h4> <%
	 						break;
 						}
 						%>

				</a></li>
			</td>
			<%
				}
			%>
		</tr>
	</table>

<h2 style="padding-left: 50px; padding-top: 50px;"><%=session.getAttribute("mid")%>님의 지역에 있어요</h2>

	<!--클래스 목록-->
	<table class="pro_body">
		<tr>
			<%
				for (ClassVO vo : list4) {
			%>
			<td style="padding: 10px;">
				<li class="list"><a
					href="detail.jsp?classIdx=<%=vo.getClassIdx()%>" class="lista">
						<img
						src="${pageContext.request.contextPath}/uploadImg/<%=vo.getImage() %>"
						alt="" class="img">
						<h3><%=vo.getName()%>
							클래스
						</h3>
						<p><%=vo.getPrice()%>원
						</p> <%
 						switch (vo.getClassRegionIdx()) {
  						case 1:
 						%>
						<h4 style="padding: 0 5px 5px;">서울</h4> <%
 						break;
						case 2:
 						%>
						<h4 style="padding: 0 5px 5px;">경기</h4> <%
 						break;
						case 3:
						%>
						<h4 style="padding: 0 5px 5px;">충청도</h4> <%
 						break;
 						case 4:
 						%>
						<h4 style="padding: 0 5px 5px;">전라도</h4> <%
 						break;
 						case 5:
 						%>
						<h4 style="padding: 0 5px 5px;">경상도</h4> <%
 						break;
 						}
 						%>

				</a></li>
			</td>
			<%
				}
			%>
		</tr>
	</table>

<h2 style="padding-left: 50px; padding-top: 50px;"><%=session.getAttribute("mid")%>님이 좋아할 것 같아요</h2>

	<!--클래스 목록-->
	<table class="pro_body">
		<tr>
			<%
				for (ClassVO vo : list5) {
			%>
			<td style="padding: 10px;">
				<li class="list"><a
					href="detail.jsp?classIdx=<%=vo.getClassIdx()%>" class="lista">
						<img
						src="${pageContext.request.contextPath}/uploadImg/<%=vo.getImage() %>"
						alt="" class="img">
						<h3><%=vo.getName()%>
							클래스
						</h3>
						<p><%=vo.getPrice()%>원
						</p> <%
 						switch (vo.getClassRegionIdx()) {
  						case 1:
 						%>
						<h4 style="padding: 0 5px 5px;">서울</h4> <%
 						break;
						case 2:
 						%>
						<h4 style="padding: 0 5px 5px;">경기</h4> <%
 						break;
						case 3:
						%>
						<h4 style="padding: 0 5px 5px;">충청도</h4> <%
 						break;
 						case 4:
 						%>
						<h4 style="padding: 0 5px 5px;">전라도</h4> <%
 						break;
 						case 5:
 						%>
						<h4 style="padding: 0 5px 5px;">경상도</h4> <%
 						break;
 						}
 						%>

				</a></li>
			</td>
			<%
				}
			%>
		</tr>
	</table>
	
	<h2 style="padding-left: 50px; padding-top: 50px;"><%=session.getAttribute("mid")%>님이 신청한 클래스와 비슷해요</h2>

	<!--클래스 목록-->
	<table class="pro_body">
		<tr>
			<%
				for (ClassVO vo : list6) {
			%>
			<td style="padding: 10px;">
				<li class="list"><a
					href="detail.jsp?classIdx=<%=vo.getClassIdx()%>" class="lista">
						<img
						src="${pageContext.request.contextPath}/uploadImg/<%=vo.getImage() %>"
						alt="" class="img">
						<h3><%=vo.getName()%>
							클래스
						</h3>
						<p><%=vo.getPrice()%>원
						</p> <%
 						switch (vo.getClassRegionIdx()) {
  						case 1:
 						%>
						<h4 style="padding: 0 5px 5px;">서울</h4> <%
 						break;
						case 2:
 						%>
						<h4 style="padding: 0 5px 5px;">경기</h4> <%
 						break;
						case 3:
						%>
						<h4 style="padding: 0 5px 5px;">충청도</h4> <%
 						break;
 						case 4:
 						%>
						<h4 style="padding: 0 5px 5px;">전라도</h4> <%
 						break;
 						case 5:
 						%>
						<h4 style="padding: 0 5px 5px;">경상도</h4> <%
 						break;
 						}
 						%>

				</a></li>
			</td>
			<%
				}
			%>
		</tr>
	</table>

	<div style="clear: both;"></div>
	<br>
	<br>
	<br>

	<jsp:include page="footer.jsp" />
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>My Page</title>
    <link href="css/mainstyles.css" rel="stylesheet" type="text/css">
    <link href="css/style_mypage.css" rel="stylesheet" type="text/css">
    
    <script>
        function popup(){
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
    <!-- 상단  -->
    <header>
        <h1>
            <a href="index.jsp" style="color: #8EBCBB" style="text-decoration:none">One Days</a>
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

    <!-- 마이페이지 메뉴  -->
    <div class=mypage>
        <a href="myPage.jsp">마이페이지</a>
    </div>
    <div class="mypage_menu">
        <a href="myPage.jsp">개인 정보</a> <a href="apply.jsp">신청 현황</a> <a href="#">관심
         등록</a> <a href="makeClass.jsp">클래스 만들기</a>
    </div>

   <!-- 클래스 만들기 -->
    <div class="mypage_wrap">
        <h2 style="color: #8EBCBB; min-width: 1500px;">새로운 클래스 만들기</h2>
        <br />
        <form method="post" action="RegistClass" style="min-width: 1500px;" enctype="multipart/form-data">
            <div class=mypage_box>
                <h5>클래스 이름</h5>
                <input type="text" name="name" />
            </div>
            <div class=region>
                <h5>카테고리</h5>
            </div>
            <div class=region_select>
                <select name="categoryIdx">
               <option value="">카테고리 선택</option>
               <option value="1">공예</option>
               <option value="2">요리</option>
               <option value="3">악기</option>
               <option value="4">IT</option>
               <option value="5">액티비티</option>
            </select>
            </div>
            <div class="mypage_box">
                <h5>장소</h5>
                <input type="text" name="place" />
            </div>
            <div class=mypage_box>
                <h5>날짜</h5>
                <input type="date" name="date" />
            </div>
            <div class=mypage_box>
                <h5>시간</h5>
                <input type="time" name="time" />
            </div>
            <div class=mypage_box>
                <h5>정원</h5>
                <input type="text" name="people" placeholder="숫자만 입력해주세요." />
            </div>
            <div class=region>
                <h5>난이도</h5>
            </div>
            <div class=region_select>
                <select name="level">
               <option value="">난이도 선택</option>
               <option value="초급">초급</option>
               <option value="중급">중급</option>
               <option value="고급">고급</option>
            </select>
            </div>
            <div class=mypage_box>
                <h5>클래스 소개</h5>
                <input type="text" name="content" />
            </div>
            <div class=mypage_box>
                <h5>작가 소개</h5>
                <input type="text" name="teacherInfo" />
            </div>
            <div class=mypage_box>
                <h5>가격</h5>
                <input type="text" name="price" />
            </div>
            <div class=mypage_box>
                <h5>클래스 사진</h5>
                <input type="file" name="image" />
            </div>
            <div class=region>
                <h5>지역</h5>
            </div>
            <div class=region_select>
                <select name="RegionIdx">
               <option value="">지역 선택</option>
               <option value="1">서울</option>
               <option value="2">경기</option>
               <option value="3">충청도</option>
               <option value="4">전라도</option>
               <option value="5">경상도</option>
            </select>
            </div>
            <div class=btn_box>
                <input class=btn type="submit" value="클래스 만들기" onclick="dropdown_check();"/>
            </div>
          
        </form>

    </div>
    
   

</body>

</html>
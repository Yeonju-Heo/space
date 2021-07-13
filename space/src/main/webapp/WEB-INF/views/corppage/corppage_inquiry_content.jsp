<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/space/css/space.css">
<link rel="stylesheet" href="http://localhost:9000/space/css/mypage.css">
<script src="http://localhost:9000/space/js/jquery-3.6.0.min.js"></script>
<style>
.mypage_left_box ul li:nth-child(3) a{
	text-decoration: none;
	font-size:19px;
	font-weight:bold;
	color:black;
}
.mypage_right_box_title p{ 
	margin-bottom:20px;
}
.mypage_right_box_table th:nth-child(2) {
	text-align : right;
	padding-right:10px;
}
.mypage_right_box_table th:first-child {
	text-align : left;
	padding-left:10px;
}

</style>
</head>
<body>

<!-- header -->
<jsp:include page="../header.jsp"></jsp:include>
 
	<!-- content -->
	<div class="mypage_container">
	<div class="mypage_content">
	
		
			<!-- left_box  -->
			<div class="mypage_left_box">
				<p class="mypage_ltitle">
					<img src="http://localhost:9000/space/images/little_logo.jpg"/>
					<span>나의 회의실</span>
				</p>
				<ul>
						<li>
						<a href="corppage.do">회의실 관리</a>
					</li>
					<li>
						<a href="corppage_booked.do">예약 내역</a>
					</li>
						<li>
						<a href="corppage_inquiry.do">1:1 문의</a>
					</li>
						<li>
						<a href="corppage_info.do">회원정보 수정</a>
					</li>
				</ul>
			</div>
			<!-- left_box end -->

			<!-- right_box -->
			<div class="mypage_right_box">
					
				<div class="mypage_right_box_title">
					<div class="title_deco"></div>
					<p class="mypage_right_tit">1:1 문의</p>
					
				</div>
				
		
			
			<table class="mypage_right_box_table">
				<tr>
					<th>회의실 추가 등록 문의</th>
					<th>2021-07-08</th>
				</tr>
				<tr>
					<td colspan="2"><br><br><br><br>회의실 추가 등록은 제한이 없나요?<br><br><br><br><br><br><br></td>
				</tr>
				
			</table>
			<br><br>
				<div class="mypage_right_box_title">
					<div class="title_deco"></div>
					<p class="mypage_right_tit">문의 답변</p>
					
				</div>
				
		
			
			<table class="mypage_right_box_table">
				<tr>
					<th>안녕하세요. 스페이스닷컴입니다.</th>
				</tr>
				<tr>
					<td><br><br><br><br>회의실 추가 등록은 제한이 없습니다^^<br><br><br><br><br><br><br></td>
				</tr>
				
			</table>
		
			</div>
			<!-- right box end -->
			
		
	</div>
	
	</div>
	
	<!-- footer -->   
 <jsp:include page="../footer.jsp"></jsp:include>
	
</body>
</html>
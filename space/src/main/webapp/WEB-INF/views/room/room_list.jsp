<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
body {
	margin: auto;
	padding: 0;
	min-width: 1280px;
 	max-width: 1920px;
	text-align: center;
}
.container {
	margin: 0;
	padding: 0;
}
.search_area {
	margin: auto;
	padding: 0;
	height: 300px;
	background: url("http://localhost:9000/space/images/search_box_bg.jpg") center top no-repeat;
}
.search_box {
	margin: 0 auto;
	text-align: center;
}
.search_box_title {
	padding: 30px 0 0 0;
	color: white;
	font-weight: bold;
}
.search_box_list {
	width: 1000px;
	padding: 0;
	margin: 30px auto;
	list-style-type: none;
}
.search_box_list li {
	display: inline-block;
	width: 300px;
	height: 40px;
	padding: 10px;
	margin: 3px;
	text-align: center;
	border-radius: 3px;
	background-color: white;
}
.search_box_list li * {
	height: 20px;
}
.search_box_list li input[type=text] {
	padding: 3px 5px;
	/* border: 0; */
}
.btn_search_reset {
	background: none;
	border: none;
}
.btn_search {
	width: 150px;
	padding: 15px;
	border: none;
	border-radius: 3px;
}
</style>
</head>
<body>

	<div class="container">
	
		<!-- ��� �˻� �ڽ� -->
		<div class="search_area">
			<div class="search_box">
				<h1 class="search_box_title">� ȸ�ǽ��� ã�� �ֳ���?</h1>
				<ul class="search_box_list">
					<li>
						<label>
							<span><img src="http://localhost:9000/space/images/search_icon_location.png"></span>
							<input type="text" name="location" id="search_location" placeholder="����">
						</label>
						<button type="button" class="btn_search_reset"><img src="http://localhost:9000/space/images/btn_reset_icon.png"></button>
						<div></div>
					</li>
					<li>
						<label>
							<span><img src="http://localhost:9000/space/images/search_icon_date.png"></span>
							<input type="text" name="date" id="search_date" placeholder="��¥/�ð�">
						</label>
						<button type="button" class="btn_search_reset"><img src="http://localhost:9000/space/images/btn_reset_icon.png"></button>
						<div></div>
					</li>
					<li>
						<label>
							<span><img src="http://localhost:9000/space/images/search_icon_person.png"></span>
							<input type="text" name="capacity" id="search_capacity" placeholder="�����ο�">
						</label>
						<button type="button" class="btn_search_reset"><img src="http://localhost:9000/space/images/btn_reset_icon.png"></button>
						<div></div>
					</li>
				</ul>
				<button type="button" class="btn_search">�˻��ϱ�</button>
			</div>
		</div>
		
		<!-- ���� �ɼ� �˻� -->
		<div></div>
		
		<!-- ȸ�ǽ� ����Ʈ(�˻� ����) -->
		<div></div>
		
	</div>

</body>
</html>






















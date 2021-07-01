<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�����̽� ����</title>
<link rel="stylesheet" href="http://localhost:9000/space/css/space.css">
<link rel="stylesheet" href="http://localhost:9000/space/css/carousel.css">
<style>
/* �����̳� { */
.container:after {
	content: '';
	display:block;
	clear:both;
}
/* } �����̳� */
.visual {
	box-sizing:border-box;
	position:relative;
	width:100%;
	min-width:1280px;
	height:646px;
	padding-top:182px;
	background:url('http://localhost:9000/space/images/main_visual.png') no-repeat top center;
}

.visual_box {
	width:1200px;
	margin:0 auto;
}

.main_visual_text_box {
	margin-bottom:30px;
	font-size:0;
}
.main_visual_text_box_logo {
	display:inline-block;
	vertical-align:top;
}
.main_visual_text_box_text {
	position:relative;
	display:inline-block;
	vertical-align:top;
	padding-left:19px;
	margin-left:18px;
	font-family:"nanumsquare-r";
	font-size:18px;
	line-height:26px;
	color:#ffffff;
	letter-spacing:-1px;
}
.main_visual_text_box_text span {
	opacity:0.8;
}
.main_visual_text_box_text:before {
	content:'';
	display:block;
	width:1px;
	height:36px;
	margin-top:-18px;
	position:absolute;
	left:0;
	top:50%;
	background:#66a6ec;
}

.main_visual_search_box {
	position:relative;
	box-sizing:border-box;
	background:#f5f5f5;
	border-radius:5px;
	width:640px;
	padding:18px 15px;
	font-size:0;
}
.main_visual_search_btn {
	width:18px;
	height:18px;
	vertical-align:top;
	border:none;
	background:url('/pc/images/main_search_btn.jpg');
}
.main_visual_search_text {
	width:calc(100% - 33px);
	height:18px;
	margin-left:15px;
	vertical-align:top;
	border:none;
	background:none;
}
.main_visual_search_list {
	display:none;
	box-sizing:border-box;
	width:100%;
	min-height:131px;
	max-height:217px;
	padding-top:5px;
	overflow-y:auto;
	position:absolute;
	top:49px;
	left:0;
	z-index:1;
	background:#f5f5f5;
}
.main_visual_search_list.on {
	display:block;
}
.main_visual_search_list li {
	padding:13px 0 13px 30px;
}
.main_visual_search_list li a {
	font-family:"nanumsquare-r";
	font-size:16px;
	line-height:16px;
	color:#252626;
}

.main_visual_slide_box {
	margin-top:30px;
}
.main_visual_slide_control {
	margin-bottom:30px;
}
.main_visual_slide_index_box {
	margin-bottom:10px;
	font-family:"nanumsquare-eb";
	font-size:16px;
	line-height:16px;
	color:#ffffff;
}
.main_visual_slide_index {
	display:inline-block;
	margin-right:2px;
	vertical-align:top;
}
.main_visual_slide_nav {
	width:180px;
	font-size:0;
}
.main_visual_slide_nav button {
	border:none;
	width:100%;
	height:1px;
	background:#f3f3f3;
}
.main_visual_slide_nav.x2 button {
	width:50%;
}
.main_visual_slide_nav.x3 button {
	width:33.3333%;
}
.main_visual_slide_nav.x4 button {
	width:25%;
}
.main_visual_slide_nav.x5 button {
	width:20%;
}
.main_visual_slide_nav.x6 button {
	width:16.6666%;
}
.main_visual_slide_nav.x7 button {
	width:14.2857%;
}
.main_visual_slide_nav.x8 button {
	width:12.5%;
}
.main_visual_slide_nav.x9 button {
	width:11.1111%;
}
.main_visual_slide_nav.x10 button {
	width:10%;
}
.main_visual_slide_nav .on {
	background:#51e8ff;
}

.main_visual_slide {
	overflow:hidden;
	width:780px;
	margin:-5px 0 0 -5px;
}
.main_visual_slide .slick-list {
	padding:5px;
	margin-left:-10px;
}
.main_visual_slide .slick-list .slick-track {
	margin:0 !important;
}
.main_visual_slide > div > div > div {
	margin-left:10px;
}
.main_visual_slide01 div a {
	position:relative;
	box-sizing:border-box;
	display:block;
	width:120px;
	height:120px;
	padding-top:70px;
	border-radius:9px;
	background:#ffffff;
	font-family:"nanumsquare-b";
	font-size:18px;
	line-height:22px;
	color:#242525;
	text-align:center;
	-webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.3);
	-moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.3);
	box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.3);
}
.main_visual_slide01 div a.on {
	background:url('/pc/images/main_visual_slide_bg01.png') no-repeat left top;
	color:#ffffff;
}
.main_visual_slide01 div a:before {
	content:'';
	display:block;
	width:26px;
	height:30px;
	background:url('/pc/images/main_visual_slide_marker.png') no-repeat left top;
	position:absolute;
	top:30px;
	left:50%;
	margin-left:-15px;
}

.main_visual_slide02 > div > div > div > div {
	display:table;
}
.main_visual_slide02 div a {
	position:relative;
	box-sizing:border-box;
	display:table-cell;
	width:120px;
	height:60px;
	border-radius:9px;
	background:#ffffff;
	font-family:"nanumsquare-b";
	font-size:18px;
	line-height:22px;
	color:#242525;
	text-align:center;
	vertical-align:middle;
	-webkit-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.3);
	-moz-box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.3);
	box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.3);
}
.main_visual_slide02 div a.on {
	background:url('/pc/images/main_visual_slide_bg01.png') no-repeat left top;
	color:#ffffff;
}
.main_visual_slide02 div a:before {
	content:'';
	display:none;
	width:26px;
	height:30px;
	background:url('/pc/images/main_visual_slide_marker.png') no-repeat left top;
	position:absolute;
	top:30px;
	left:50%;
	margin-left:-15px;
}

/* } */

.main_tit_box {
	position:relative;
	margin-bottom:36px;
}
.main_tit_box.line:after, .main_tit_box.line:before {
	content:'';
	display:block;
	width:450px;
	height:1px;
	position:absolute;
	top:60%;
	background:#e5e5e5;
}
.main_tit_box.line:after {
	left:0;
}
.main_tit_box.line:before {
	right:0;
}
.main_tit01 {
	margin-bottom:12px;
	font-size:35px;
	line-height:32px;
	color:#252626;
	text-align:center;
	letter-spacing:-1px;
}
.main_tit01 span {
	color:#3284e6;
}
.main_stit01 {
	font-size:16px;
	line-height:16px;
	color:#6a6a6a;
	text-align:center;
}
/* }  */

/************************* carousel *****************************************/
#demo, .section, .center_box {
	width:100%;
	min-width:1280px;
}
#demo, .section, .center_box{
	width:1200px;
	margin:0 auto;
	}
.carousel-inner {
	text-align:center;
	margin-top:80px;
}
.carousel-inner img {
	border-radius:7px;

}

/********************************end carousel *********************************/

/*  */
.section.section02 {
	padding:95px 0 100px;
	background:#ffffff;
}
/* */

/**/
.section.section03 {
	padding:75px 0 80px;
	background:url('/pc/images/main_section03_bg.jpg') no-repeat center;
}
/* */

/* */
.section.section04 {
	padding:75px 0 25px;
}
/* */

/* */
.section.section05 {
	position:relative;
	height:340px;
}
.section.section05:before {
	content:'';
	display:block;
	width:100%;
	height:200px;
	position:absolute;
	left:0;
	top:50%;
	margin-top:-100px;
	background:#dbf0f6;
}
.section.section05 .section_center_box {
	position:relative;
}
.main_section05_slide_box a {
	display:block;
}
.main_section05_slide_box .slick-dots {
	position:absolute;
	right:10px;
	bottom:20px;
}
.main_section05_slide_box .slick-dots li {
	float:left;
	line-height:0;
}
.main_section05_slide_box .slick-dots li button {
	box-sizing:content-box;
	overflow:hidden;
	text-indent:-9999px;
	width:8px;
	height:8px;
	margin:4px;
	border-radius:50%;
	border:none;
	background:#7f8688;
}
.main_section05_slide_box .slick-dots li.slick-active button {
	margin:0;
	background:none;
	border:4px solid #413f3f;
}
/* 05 */

/*06 */
.section.section06 {
	padding:55px 0 65px;
}
.main_section06_content_box:after {
	content:'';
	display:block;
	clear:both;
}
.main_section06_content_box > div {
	float:left;
}
.main_section06_content_box_location {
	width:545px;
}
.main_section06_content_box_text {
	box-sizing:border-box;
	width:655px;
	padding-left:17px;
}
.main_section06_content_box_tit {
	padding-top:90px;
	padding-left:70px;
	font-family:"nanumsquare-r";
	font-size:42px;
	line-height:52px;
	color:#252626;
	letter-spacing:-2px;
}
.main_section06_content_box_tit span {
	position:relative;
	display:inline-block;
	vertical-align:top;
	font-family:"nanumsquare-l";
	font-size:42px;
	line-height:52px;
	color:#252626;
}
.main_section06_content_box_tit span:after {
	content:'';
	display:block;
	width:29px;
	height:41px;
	background:url('/pc/images/main_section06_content_box_tit_mark.png') no-repeat left top;
	position:absolute;
	top:3px;
	right:-34px;
}

.main_section06_content_box_stit {
	margin-top:10px;
	padding-left:70px;
	font-family:"nanumsquare-r";
	font-size:16px;
	line-height:26px;
	color:#252626;
	letter-spacing:-1px;
}

.main_section06_content_box_list {
	margin-top:50px;
}
.main_section06_content_box_list:after {
	content:'';
	display:block;
	clear:both;
}
.main_section06_content_box_list li {
	position:relative;
	float:left;
	width:210px;
}
.main_section06_content_box_list li + li:after {
	content:'';
	display:block;
	width:1px;
	height:100%;
	background:#d3d4d4;
	position:absolute;
	left:0;
	top:0;
}
.main_section06_content_box_list_num {
	display:block;
	font-family:"nanumsquare-l";
	font-size:55px;
	line-height:55px;
	color:#3a7fb9;
	letter-spacing:-2px;
	text-align:center;
}
.main_section06_content_box_list_text {
	display:block;
	margin-top:10px;
	font-family:"nanumsquare-b";
	font-size:18px;
	line-height:18px;
	color:#252626;
	letter-spacing:-2px;
	text-align:center;
}
</style>
</head>
<body>

	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<!-- content -->
	
	<!-- s container -->
	<div class="container">
		<h2 id="content" class="hidden">������ ����</h2>
		
	<!-- s main_visual -->
	<div class="visual">
		<div class="visual_box">
			<div class="main_visual_text_box">
				<div class="main_visual_text_box_logo"><img src="http://localhost:9000/space/images/main_visual_logo.png" alt="ȸ�ǽǴ���"></div>
				<p class="main_visual_text_box_text"><span>ȸ�ǽ��� ��� ��. ����Ͻ� ���Ӱ��� �������� �ѹ��� ��! <br>
                        ���� ���� ȸ�ǽ� ��Ī �÷���</span></p>
			</div>
			<div class="main_visual_search_box">
				<label>
					<button class="main_visual_search_btn" type="button" disabled></button>
					<input id="search" class="main_visual_search_text" type="text" placeholder="����, ������ �˻����ּ���">
				</label>
			</div>
		</div>
	</div>
	</div>
	<!-- e main_visual -->

			<!-- ĳ���� ���� -->
		<div id="demo" class="carousel slide" data-ride="carousel">
		
		<!-- Indicators -->
		  <ul class="carousel-indicators">
		    <li class="item1 active"></li>
		    <li class="item2"></li>
		    <li class="item3"></li>
		  </ul>
		  
		  <!-- The slideshow -->
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <a href="#" >
		      <img src="http://localhost:9000/space/images/dK7qWq21H1a40aasSNZuu0YInYmfCxEylnlY08Ms.jpg"></a>
		    </div>
		    <div class="carousel-item">
			    <a href="#" >
				<img src="http://localhost:9000/space/images/KFaOcLArikVWmRR5mDvwvXsd6SeW02E25AuLxkpl.jpg"></a>
		    </div>
		    <div class="carousel-item">
		      	<a href="#" >
				<img src="http://localhost:9000/space/images/dELPSWEY31IE7qYotj3zKzHMOiJytzD3PkpUHBhe.png"></a>
		    </div>
		    <div class="carousel-item">
		      	<a href="#" >
				<img src="http://localhost:9000/space/images/M8ZwruRdKfvHJuJ4h8fuDsnNmkzDJWZgqTe9FH8H.png"></a>
		    </div>
		    <div class="carousel-item">
		      	<a href="#" >
				<img src="http://localhost:9000/space/images/STokWuWFdhcYj9wIkcwz7kLvw5tAUyfCPai5AclA.png"></a>
		    </div>
		  </div>
		  
		  <!-- Left and right controls -->
		  <a class="carousel-control-prev" href="#myCarousel">
		    <span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" href="#myCarousel">
		    <span class="carousel-control-next-icon"></span>
		  </a>
	</div>
	<!-- ĳ�������� -->

	<!-- s main_section02 -->
	<div class="section section02">
		<div class="section_center_box">
			<div class="main_tit_box line">
				<p class="main_tit01"><span>ȭ�� ȸ�ǽ�</span> ���� ����</p>
				<p class="main_stit01">��, ��ī����, ����, �ý���, ������ �� ȭ�� ȸ�ǰ� ������ �����Դϴ�.</p>
			</div>
			<div class="cont_list_div_wrap md_slider_wrap">
				<button class="right" type="button" title="����"></button>
				<button class="left" type="button" title="����"></button>
				<div class="md_slider cont_list_div hf_effect02">

											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/15">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/gwodlXqFzuM2InkKSQTzNMqO0qcKmhhQsys43rQM.jpg') no-repeat center;background-size:cover;">
																			<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="15"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���ټ��� �پ ��� ȸ�ǽ�</p>
									<p class="cont_list_detail_tit">������ 9ȣ�� (��ġ��)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">��ġ��</li>
											<li class="subway">�Ｚ��</li>
										</ul>
										<p class="cont_list_detail_info_m">30�ν�, 16�ν�, 10�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">66,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star40.png" alt=""> <span>3.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/9">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/Yu6s34gEIvIqhdjQCpT97YmhPsM29jDvSESOinni.jpg') no-repeat center;background-size:cover;">
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="9"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">������ ���� ����</p>
									<p class="cont_list_detail_tit">���α� 4ȣ�� (û����)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">û����</li>
											<li class="subway">������</li>
										</ul>
										<p class="cont_list_detail_info_m">50�ν�, 15�ν�, 12�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">44,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/53">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/zdmiiG4WdeEXEyw2aAzY8Pabkm1UrJvmDxYbyFXH.jpg') no-repeat center;background-size:cover;">
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="53"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���ټ� �� ȸ�ǽ� ����� �ֻ�</p>
									<p class="cont_list_detail_tit">�λ� ������ 1ȣ�� (������)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">������</li>
											<li class="subway">������</li>
										</ul>
										<p class="cont_list_detail_info_m">140�ν�, 81�ν�, 54�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">22,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/83">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/uSTq0CYc9Pv6p5LUcYAAyxYU2Amoh59WW9TjQkMH.jpg') no-repeat center;background-size:cover;">
																			<span class="cont_list_thum_cover">7��<br />
20% ���� ���θ��</span>
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="83"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">�پ ���ټ��� ȭ��ȸ�ǽ�</p>
									<p class="cont_list_detail_tit">�߱� 9ȣ�� (����)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">����</li>
											<li class="subway">��û��</li>
										</ul>
										<p class="cont_list_detail_info_m">15�ν�, 4�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">22,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/41">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/VOVTZ4nk7xA0DZo21wiv7zNWaHl6E7cnwKIEsFNU.jpg') no-repeat center;background-size:cover;">
																			<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="41"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���ǵ� IFC MALL</p>
									<p class="cont_list_detail_tit">�������� 1ȣ�� (���ǵ���)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">���ǵ���</li>
											<li class="subway">���ǵ���</li>
										</ul>
										<p class="cont_list_detail_info_m">6�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">66,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star40.png" alt=""> <span>3.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/60">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/JPMZgHzbgXadssZMGntS6hOVzIGTpz4uW9p3W9CE.jpg') no-repeat center;background-size:cover;">
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="60"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���� ��Ʃ��� ���� ���̳���</p>
									<p class="cont_list_detail_tit">������ 3ȣ�� (������1��)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">������1��</li>
											<li class="subway">�Ѿ�뿪</li>
										</ul>
										<p class="cont_list_detail_info_m">40�ν�, 20�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">79,600��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/29">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/0qX7DrtqqwVMfzMtpXnqQK4VRCAxOQVPWES7Hnde.jpg') no-repeat center;background-size:cover;">
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="29"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">�κ��Ǽ���, ������CF �� 50���̻� �Կ�. ��޽��� ���׸���&amp;�ֽ� ȭ��ȸ��</p>
									<p class="cont_list_detail_tit">������ 17ȣ�� (�Ż絿)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">�Ż絿</li>
											<li class="subway">�Ż翪</li>
										</ul>
										<p class="cont_list_detail_info_m">60�ν�, 12�ν�, 10�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">55,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>5.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/5">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/g829ZJObh8C2GjNr1hQi87OThbbNGkfS8pFTvhWN.jpg') no-repeat center;background-size:cover;">
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="5"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���ټ� �� ȸ�ǽ� ����� �ֻ�</p>
									<p class="cont_list_detail_tit">���α� 1ȣ�� (������)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">������</li>
											<li class="subway">��ȭ����</li>
										</ul>
										<p class="cont_list_detail_info_m">54�ν�, 36�ν�, 22�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">38,500��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/10">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/7bb9s1w75XhHyv54QEwSgFmsrupQvPauqKUU8Sc7.jpg') no-repeat center;background-size:cover;">
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="10"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">�ǳ� ���׸�� ��޽����� ȸ�ǽ�</p>
									<p class="cont_list_detail_tit">������ 7ȣ�� (�Ｚ��)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">�Ｚ��</li>
											<li class="subway">�Ｚ��</li>
										</ul>
										<p class="cont_list_detail_info_m">20�ν�, 17�ν�, 16�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">88,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/105">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/rsswvK8Io6P7lvSsTFOM0mPVEE4ZToGhMV3uTrDl.jpg') no-repeat center;background-size:cover;">
																			<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="105"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���ټ� ���� ����� ������� ȸ�ǽ�</p>
									<p class="cont_list_detail_tit">���ʱ� 4ȣ�� (���ʵ�)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">���ʵ�</li>
											<li class="subway">���ʿ�</li>
										</ul>
										<p class="cont_list_detail_info_m">80�ν�, 20�ν�, 8�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">30,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/13">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/gS4Mkb2KBKANgYHvBydvTChqDQaUzsbRFP4p1TzK.jpg') no-repeat center;background-size:cover;">
																			<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="13"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">ǰ���ִ� ȸ�� ���࿡ ����</p>
									<p class="cont_list_detail_tit">������ 8ȣ�� (���ﵿ)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">���ﵿ</li>
											<li class="subway">���￪</li>
										</ul>
										<p class="cont_list_detail_info_m">30�ν�, 12�ν�, 6�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">66,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/4">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/uuwvGvhy0h81JEXYjbT7CTYxGPoKnJjrvgtCEA9V.jpg') no-repeat center;background-size:cover;">
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="4"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���ټ� �� ȸ�ǽ� ����� �ֻ�</p>
									<p class="cont_list_detail_tit">������ 1ȣ�� (�Ｚ��)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">�Ｚ��</li>
											<li class="subway">������</li>
										</ul>
										<p class="cont_list_detail_info_m">30�ν�, 14�ν�, 8�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">26,400��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/20">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/U2FV4BvkiIFYAWSwoaVwnafg9qkO9S5lsgXmvbWc.jpg') no-repeat center;background-size:cover;">
																		<button class="heart_btn  " type="button" data-likable="centers" data-target="20"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">�������̳������� ����</p>
									<p class="cont_list_detail_tit">�߱� 4ȣ�� (�����1��)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">�����1��</li>
											<li class="subway">��ȭ����</li>
										</ul>
										<p class="cont_list_detail_info_m">50�ν�, 12�ν�, 6�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">52,800��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
									</div>
			</div>
		</div>
	</div>
	<!-- e main_section02 -->

	<!-- s main_section03 -->
	<div class="section section03">
		<div class="section_center_box">
			<div class="main_tit_box">
				<p class="main_tit01"><span>ȸ�ǽǴ���</span> MD ��õ</p>
				<p class="main_stit01">�����, ����, ���̿�� �� ���� ��ŷ�� ��ϵ� ���� �Դϴ�.</p>
			</div>
			<div class="cont_list_div_wrap popularity_slider_wrap">
				<button class="right" type="button" title="����"></button>
				<button class="left" type="button" title="����"></button>
				<div class="popularity_slider cont_list_div hf_effect02">
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/103">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/ZEKveZDIOj4jiuwGPNJXPvE9Q9nhB6RpiqOP6o8j.jpeg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="103"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">������ �ⱸ�� ����Ǿ� ���ټ��� �پ ����</p>
									<p class="cont_list_detail_tit">������ 18ȣ�� (������)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">������</li>
											<li class="subway">������</li>
										</ul>
										<p class="cont_list_detail_info_m">17�ν�, 12�ν�, 8�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">55,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/85">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/EM1ogbS4cn7dW7yMiV07YVPLB2POVfYvltTymGfT.jpg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="85"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">����� ���̳��� ����</p>
									<p class="cont_list_detail_tit">���� ���ֽ� 1ȣ�� (������)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">������</li>
											<li class="subway"></li>
										</ul>
										<p class="cont_list_detail_info_m">54�ν�, 10�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">22,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/120">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/R6kuGCuk28iHgwjQrK9I2umKCz5UHFJAQDlnsReB.png') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="120"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���� �ַ�� ��Ż ��Ű�� ��Ʃ���</p>
									<p class="cont_list_detail_tit">��õ�� 1ȣ�� (���굿)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">���굿</li>
											<li class="subway">��������д�����</li>
										</ul>
										<p class="cont_list_detail_info_m">54�ν�, 20�ν�, 3�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">90,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/107">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/kXkygZXkmE3O4BJVCyeEx363c6GwaDeY0FZNVC96.jpg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="107"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���� ���ټ� ����� ȸ�ǽ�/���ǽ�, ���� �ް԰���</p>
									<p class="cont_list_detail_tit">�λ� ��� 1ȣ�� (���)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">���</li>
											<li class="subway"></li>
										</ul>
										<p class="cont_list_detail_info_m">80�ν�, 50�ν�, 30�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">55,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/121">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/20Rce3GnG2IpB8D9q9c2LcdZgIfFSzaa4JLVij48.png') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="121"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���� �ַ�� ��Ż ��Ű�� ��Ʃ���</p>
									<p class="cont_list_detail_tit">���빮�� 3ȣ�� (������3��)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">������3��</li>
											<li class="subway">�����ο�</li>
										</ul>
										<p class="cont_list_detail_info_m">4�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">150,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/104">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/b2AGiDCN7waudRNSYlImPuZrfk4zifpr1JESubch.jpg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="104"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">������, �ո����� ���ݰ� �ְ� ���� ����</p>
									<p class="cont_list_detail_tit">���ʱ� 2ȣ�� (���ʵ�)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">���ʵ�</li>
											<li class="subway">������</li>
										</ul>
										<p class="cont_list_detail_info_m">182�ν�, 54�ν�, 30�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">99,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/38">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/Q8EmFlaLdrYIPbntJhOfWKQDkkb4AbNcG8Kdx1t7.jpg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="38"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">����Ͻ� ���� �뿩 ���� ��ü</p>
									<p class="cont_list_detail_tit">������ 20ȣ�� (���ﵿ)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">���ﵿ</li>
											<li class="subway">������</li>
										</ul>
										<p class="cont_list_detail_info_m">68�ν�, 42�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">66,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>5.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/119">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/KZOYr0tUXBiUWuUFVzDAHp3NFvnuceNakY8vChG3.jpg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="119"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">�Ⱦ翪 1���ⱸ 1�аŸ�. �Ⱦ�1���� �Ա�</p>
									<p class="cont_list_detail_tit">��� �Ⱦ� 1ȣ�� (�Ⱦ絿)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">�Ⱦ絿</li>
											<li class="subway">�Ⱦ翪</li>
										</ul>
										<p class="cont_list_detail_info_m">20�ν�, 9�ν�, 4�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">17,500��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/114">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/XZDuxGpka5OTHHzgmN3ghEgNcP6CV9BN0opLzcd2.jpg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="114"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">�������� ����Ͻ��� ���� �����̾�����</p>
									<p class="cont_list_detail_tit">������ 5ȣ�� (��ġ��)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">��ġ��</li>
											<li class="subway">�Ｚ��</li>
										</ul>
										<p class="cont_list_detail_info_m">120�ν�, 90�ν�, 60�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">16,500��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/25">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/VNmwnFFci9J7yxHH6UpB547dDC3O6Vt6zJ1iwXJY.jpg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="25"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">������ ���� ����</p>
									<p class="cont_list_detail_tit">�߱� 7ȣ�� (���ҹ���)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">���ҹ���</li>
											<li class="subway">��û��</li>
										</ul>
										<p class="cont_list_detail_info_m">120�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">302,600��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star40.png" alt=""> <span>4.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/28">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/qlUxgOFeBq7e61siRTR8379VMn1pwdRiyKrHyp9v.jpg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="28"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���￪ ������� �̵�</p>
									<p class="cont_list_detail_tit">��걸 2ȣ�� (���ڵ�)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">���ڵ�</li>
											<li class="subway">���￪</li>
										</ul>
										<p class="cont_list_detail_info_m">70�ν�, 16�ν�, 12�ν�</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">55,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/122">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/e0DVSdVIV3Bqpwwf1E8lHxSNw66MfZR0T7PjCBh4.PNG') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="122"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">�ֻ��� ������ �ڶ��ϴ� ��õ�� ��ǥ ����</p>
									<p class="cont_list_detail_tit">��õ ���� 1ȣ�� (����)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">����</li>
											<li class="subway">����</li>
										</ul>
										<p class="cont_list_detail_info_m">50�ν�, 30�ν�, 20�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">15,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/36">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/wvb0doekMX8OavMD9hZEOOpoMxJ6H4KjOkgLHshB.jpg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="36"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���ټ� �� ȸ�ǽ� ����� �ֻ�</p>
									<p class="cont_list_detail_tit">������ 1ȣ�� (õȣ��)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">õȣ��</li>
											<li class="subway">������</li>
										</ul>
										<p class="cont_list_detail_info_m">147�ν�, 130�ν�, 100�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">55,000��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
										</p>
									</div>
								</div>
							</a>
						</div>
											<div>
							<a class="move_box" href="https://www.kmeetingroom.com/centers/22">
								<div class="cont_list_thum" style="background:url('/_storage/thumbnails/Pv2XJi1oL1wvr1XhAqVpl5SG8luDKypjPR7MxTiG.jpg') no-repeat center;background-size:cover;">
									
									<button class="heart_btn  " type="button" data-likable="centers" data-target="22"></button>
								</div>
								<div class="cont_list_detail">
									<p class="cont_list_detail_stit">���۷������ ��ȸ�� ���� ����</p>
									<p class="cont_list_detail_tit">������ 15ȣ�� (���)</p>

									<div class="cont_list_detail_info">
										<ul class="cont_list_detail_info_l">
											<li class="mark">���</li>
											<li class="subway">���翪</li>
										</ul>
										<p class="cont_list_detail_info_m">200�ν�, 150�ν�, 120�ν�...</p>
									</div>

									<div class="cont_list_detail_ps">
										<p class="cont_list_detail_ps_p">91,800��<span>����</span></p>
										<p class="cont_list_detail_ps_s"><img src="/pc/images/star40.png" alt=""> <span>4.0</span>
										</p>
									</div>
								</div>
							</a>
						</div>
									</div>
			</div>
		</div>
	</div>
	<!-- e main_section03 -->

		<!-- s main_section04 -->
	<div class="section section04">
		<div class="section_center_box">
			<div class="main_tit_box line">
				<p class="main_tit01"><span>���� ���θ��</span> ����</p>
				<p class="main_stit01">���� ������ ���� ���� �����Դϴ�.</p>
			</div>
			<div class="cont_list_div_wrap discount_slider_wrap">
				<button class="right" type="button" title="����"></button>
				<button class="left" type="button" title="����"></button>
				<div class="discount_slider cont_list_div hf_effect02">
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/64">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/WLA7dDyQKpnOB8rHD19ZG1UiJTczyuTIXWV4CoTl.jpg') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7�� <br />
20% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="64"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">19�� ȸ�ǽ�, ���� ������ �� ������</p>
								<p class="cont_list_detail_tit">���빮�� 1ȣ�� (������2��)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">������2��</li>
										<li class="subway">���빮��</li>
									</ul>
									<p class="cont_list_detail_info_m">100�ν�, 64�ν�, 60�ν�...</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">17,600��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
									</p>
								</div>
							</div>
						</a>
					</div>
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/13">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/gS4Mkb2KBKANgYHvBydvTChqDQaUzsbRFP4p1TzK.jpg') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="13"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">ǰ���ִ� ȸ�� ���࿡ ����</p>
								<p class="cont_list_detail_tit">������ 8ȣ�� (���ﵿ)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">���ﵿ</li>
										<li class="subway">���￪</li>
									</ul>
									<p class="cont_list_detail_info_m">30�ν�, 12�ν�, 6�ν�</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">59,400��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
									</p>
								</div>
							</div>
						</a>
					</div>
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/15">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/gwodlXqFzuM2InkKSQTzNMqO0qcKmhhQsys43rQM.jpg') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="15"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">���ټ��� �پ ��� ȸ�ǽ�</p>
								<p class="cont_list_detail_tit">������ 9ȣ�� (��ġ��)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">��ġ��</li>
										<li class="subway">�Ｚ��</li>
									</ul>
									<p class="cont_list_detail_info_m">30�ν�, 16�ν�, 10�ν�...</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">59,400��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star40.png" alt=""> <span>3.5</span>
									</p>
								</div>
							</div>
						</a>
					</div>
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/83">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/uSTq0CYc9Pv6p5LUcYAAyxYU2Amoh59WW9TjQkMH.jpg') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7��<br />
20% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="83"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">�پ ���ټ��� ȭ��ȸ�ǽ�</p>
								<p class="cont_list_detail_tit">�߱� 9ȣ�� (����)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">����</li>
										<li class="subway">��û��</li>
									</ul>
									<p class="cont_list_detail_info_m">15�ν�, 4�ν�</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">22,000��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
									</p>
								</div>
							</div>
						</a>
					</div>
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/35">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/ndiNsG9lVInVOOo7PSeBI8XrecXYMJCu5OD5pKQr.jpg') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7�� <br />
10% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="35"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">��ȸ ������ ȸ�ǽ�</p>
								<p class="cont_list_detail_tit">���ʱ� 3ȣ�� (���ʵ�)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">���ʵ�</li>
										<li class="subway">�����͹̳ο�</li>
									</ul>
									<p class="cont_list_detail_info_m">280�ν�, 200�ν�, 150�ν�...</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">247,500��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
									</p>
								</div>
							</div>
						</a>
					</div>
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/105">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/rsswvK8Io6P7lvSsTFOM0mPVEE4ZToGhMV3uTrDl.jpg') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="105"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">���ټ� ���� ����� ������� ȸ�ǽ�</p>
								<p class="cont_list_detail_tit">���ʱ� 4ȣ�� (���ʵ�)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">���ʵ�</li>
										<li class="subway">���ʿ�</li>
									</ul>
									<p class="cont_list_detail_info_m">80�ν�, 20�ν�, 8�ν�...</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">27,000��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
									</p>
								</div>
							</div>
						</a>
					</div>
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/41">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/VOVTZ4nk7xA0DZo21wiv7zNWaHl6E7cnwKIEsFNU.jpg') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="41"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">���ǵ� IFC MALL</p>
								<p class="cont_list_detail_tit">�������� 1ȣ�� (���ǵ���)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">���ǵ���</li>
										<li class="subway">���ǵ���</li>
									</ul>
									<p class="cont_list_detail_info_m">6�ν�</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">59,400��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star40.png" alt=""> <span>3.5</span>
									</p>
								</div>
							</div>
						</a>
					</div>
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/100">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/9ioktn56lcw4GLSM9OLs9tZZdHGeXPG02ubbZBHV.PNG') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7��<br />
20% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="100"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">�����̺��� �ұԸ� ������ ���� ����</p>
								<p class="cont_list_detail_tit">���α� 9ȣ�� (������)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">������</li>
										<li class="subway">����3����</li>
									</ul>
									<p class="cont_list_detail_info_m">20�ν�</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">24,000��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
									</p>
								</div>
							</div>
						</a>
					</div>
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/102">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/ppUQK03cFGMok3RIjX6NrfAp8WE4QvBZ4kO8mA4e.jpg') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="102"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">���ټ� ���� ����� ȸ�ǽ�(��������)</p>
								<p class="cont_list_detail_tit">���ı� 3ȣ�� (������)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">������</li>
										<li class="subway">����������</li>
									</ul>
									<p class="cont_list_detail_info_m">10�ν�, 6�ν�, 4�ν�...</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">1,440��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>5.0</span>
									</p>
								</div>
							</div>
						</a>
					</div>
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/43">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/K9yFUPmOzlRrfGWtNgMlrN24LYelf1vCAxEmnfdN.jpg') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="43"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">���ǵ� IFC MALL</p>
								<p class="cont_list_detail_tit">�������� 2ȣ�� (���ǵ���)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">���ǵ���</li>
										<li class="subway">���ǵ���</li>
									</ul>
									<p class="cont_list_detail_info_m">30�ν�, 18�ν�, 12�ν�...</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">17,820��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star50.png" alt=""> <span>4.5</span>
									</p>
								</div>
							</div>
						</a>
					</div>
														<div>
						<a class="move_box" href="https://www.kmeetingroom.com/centers/14">
							<div class="cont_list_thum" style="background:url('/_storage/thumbnails/TvBkBt6o3nAgAmg5dHSj0LRsvwdkEGnLBrQrWfls.jpg') no-repeat center;background-size:cover;">
																	<span class="cont_list_thum_cover">7��<br />
10% ���� ���θ��</span>
																<button class="heart_btn  " type="button" data-likable="centers" data-target="14"></button>
							</div>
							<div class="cont_list_detail">
								<p class="cont_list_detail_stit">ǰ���ִ� ȸ�� ���࿡ ����</p>
								<p class="cont_list_detail_tit">������ 6ȣ�� (���ﵿ)</p>

								<div class="cont_list_detail_info">
									<ul class="cont_list_detail_info_l">
										<li class="mark">���ﵿ</li>
										<li class="subway">���￪</li>
									</ul>
									<p class="cont_list_detail_info_m">20�ν�, 10�ν�</p>
								</div>

								<div class="cont_list_detail_ps">
									<p class="cont_list_detail_ps_p">118,800��<span>����</span></p>
									<p class="cont_list_detail_ps_s"><img src="/pc/images/star00.png" alt=""> <span>0.0</span>
									</p>
								</div>
							</div>
						</a>
					</div>
							</div>
			</div>
		</div>
	</div>
	<!-- e main_section04 -->
	
	<!-- s main_section05 -->
	<div class="section section05">
		<div class="section_center_box">
			<div class="main_section05_slide_box">
									<div>
						<a href="https://www.kmeetingroom.com/guide" >
							<img src="/_storage/banners/uCm6HQXmeQgSTnXmwFjRNtBu4M9lhwRZnIJ5R4GX.png" alt=""></a>
					</div>
								<!--<div><a href="javascript:alert('��� �����Դϴ�.');"><img src="/pc/images/main_section05_banner_img01.png" alt=""></a></div>-->
			</div>
		</div>
	</div>
	<!-- e main_section05 -->

	<!-- s main_section06 -->
	<div class="section section06">
		<div class="section_center_box">
			<div class="main_section06_content_box">
				<div class="main_section06_content_box_location"><img src="/pc/images/main_section06_img01.png" alt="����">
				</div>
				<div class="main_section06_content_box_text">
					<p class="main_section06_content_box_tit"><span>���� ������</span><br>
						ȸ�ǽ� ���� ��Ī �÷���
					</p>
					<p class="main_section06_content_box_stit">ȸ�ǽǴ����� ���� ȸ�ǽ��� ���ϴ� �������� <br>
						������ �̿��� �� �ֵ��� �����մϴ�.
					</p>
					<ul class="main_section06_content_box_list">
						<li>
							<span id="count01" class="main_section06_content_box_list_num">94</span>
							<span class="main_section06_content_box_list_text">��� ����</span>
						</li>
						<li>
							<span id="count02" class="main_section06_content_box_list_num">417</span>
							<span class="main_section06_content_box_list_text">��ϵ� ȸ�ǽ�</span>
						</li>
						<li>
							<span id="count03" class="main_section06_content_box_list_num">53457</span>
							<span class="main_section06_content_box_list_text">���� �̿� ��</span>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- s main_section06 -->

	<!-- e sub_section -->
	<!-- s sub_section -->
	<div class="sub_section sub_section_videoconference01" style="padding: 80px 0 130px;">
		<div class="center_box">
			<div class="sub_section_videoconference01_contentbox">
				<div class="sub_section_videoconference01_contentbox_right motion02 s_obj opa_obj01 active">
					<p class="sub_section_videoconference01_contentbox_tit" style="font-size: 39px;">���� �ֽ��� ȭ�� ȸ�� �ַ����<br>
						<span>�� ��Ż</span>�� �̿��غ�����.</p>
						<br>
					<p class="sub_section_videoconference01_contentbox_tit" style="font-size: 24px;">
						�� �Ϸ� ����� ���� ��Ż���� ��� ��Ż���� �����մϴ�.
					</p>
					<a class="sub_section_videoconference01_contentbox_btn" href="https://www.kmeetingroom.com/video/rental"><span>ȭ��ȸ�� �ַ��</span></a>
				</div>
				<div class="sub_section_videoconference01_contentbox_left motion s_obj left_obj02 active"><img src="/pc/images/sub_section_videoconference01_contentbox_img01.jpg" alt=""></div>
			</div>
		</div>
	</div>
	<!-- e sub_section -->

	</div>
	<!-- e container -->
	
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>
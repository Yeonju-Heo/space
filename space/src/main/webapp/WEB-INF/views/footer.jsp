<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
/* Ǫ�� { */
#footer {
	min-width:1280px;
	background:#f9f9f9;
}

.footer_top {
	border-top:1px solid #e4e4e4;
	border-bottom:1px solid #e4e4e4;
	background:#ffffff;
}
.footer_top ul {
	text-align:center;
}
.footer_top li {
	position:relative;
	display:inline-block;
	vertical-align:top;
	padding:0 32px;
	font-family:"nanumsquare-r";
	font-size:12px;
	font-weight:bold;
	line-height:50px;
	color:#858585;
	letter-spacing:-1px;
}
.footer_top li + li:before {
	content:'';
	display:block;
	width:1px;
	height:8px;
	margin-top:-4px;
	background:#c2c2c2;
	position:absolute;
	top:50%;
	left:0;
}
.footer_top li a {
	font-family:"nanumsquare-r";
	font-size:12px;
	line-height:12px;
	color:#858585;
}
.footer_top li a.bold {
	font-family:"nanumsquare-b";
	font-size:12px;
	line-height:12px;
	color:#616161;
}

.footer_inner {
	width:1200px;
	margin:0 auto;
	padding:62px 0 60px;
}
.footer_inner:after {
	content:'';
	display:block;
	clear:both;
}
.footer_inner > div {
	float:left;
}

.footer_logo img {
	vertical-align:top;
	margin-top:30px;
}

.footer_info {
	margin-left:18px;
}
.footer_info li {
	font-family:"nanumsquare-r";
	font-size:12px;
	line-height:20px;
	color:#444444;
}
.footer_info li + li {}
.footer_info li address {
	font-family:"nanumsquare-r";
	font-size:12px;
	line-height:20px;
	color:#444444;
}
.footer_info li span {
	display:inline-block;
	font-family:"nanumsquare-r";
	font-size:12px;
	line-height:20px;
	color:#444444;
}
.footer_info li .line_before {
	margin-left:10px;
}
.footer_info li .line {
	position:relative;
	padding-left:8px;
	margin-left:7px;
}
.footer_info li .line:before {
	content:'';
	display:block;
	width:1px;
	height:8px;
	background:#acacac;
	position:absolute;
	top:6px;
	left:0;
}
.footer_info_btn {
	box-sizing:border-box;
	display:inline-block;
	width:102px;
	margin:0 3px;
	font-family:"nanumsquare-r";
	font-size:11px;
	line-height:20px;
	color:#5e5e5e;
	border:1px solid #dcdcdc;
	text-align:center;
}

.footer_inner > .footer_etc {
	float:right;
}
.footer_etc p {
	letter-spacing:-1px;
	font-family:"nanumsquare-r";
	font-size:12px;
	line-height:18px;
	color:#858585;
}
.footer_etc .color {
	color:#ff5b59;
}
.footer_etc_sns {
	margin-top:20px;
}
.footer_etc_sns:after {
	content:'';
	display:block;
	clear:both;
}
.footer_etc_sns li {
	float:left;
}
.footer_etc_sns li + li {
	margin-left:29px;
}
/* } Ǫ�� */
</style>
</head>
<body>
<!-- s footer -->
<div id="footer">
	<div class="footer_top">
		<ul>
			<li><a href="#">�̿���</a></li>
			<li><a class="bold" href="#">��������ó����ħ</a></li>
			<li><a href="#">���å</a></li>
			<li><a href="#">���ֹ��� ����</a></li>
		</ul>
	</div>
	<div class="footer_inner">
		<div class="footer_logo"><img src="http://localhost:9000/space/images/footer_logo.png" alt="ȸ�ǽǴ���"></div>
		<div class="footer_info">
			<ul>
				<li><span>ȸ���</span><span class="line">��ȸ�ǽǴ���</span> <span class="line_before">��ǥ</span><span class="line">������</span></li>
				<li><span>����ڵ�Ϲ�ȣ</span><span class="line">508-88-01739</span> <a class="ftc_btn footer_info_btn" href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=5088801739" target="_blank">��������� Ȯ��</a> <span>����Ǹž�</span><span class="line">2020-���ﰭ��-03444</span></li>
				<li><address><span>�ּ�</span><span class="line">����Ư���� ������ ������� 425, ���Ϻ��� 4�� 4800ȣ (�Ｚ��)</span></address></li>
				<li>������/���� ���� info@kmeetingroom.com</li>
			</ul>
		</div>
		<div class="footer_etc">
			<p>ȸ�ǽǴ����� ����Ǹ��߰����̸� ����Ǹ��� ����ڰ� �ƴմϴ�. </p>
			<p>���� ��ǰ/�ŷ����� �� �ŷ��� ���Ͽ� å���� ���� �ʽ��ϴ�.</p>
			<ul class="footer_etc_sns">
				<li><a target="_blank" href="https://www.instagram.com/kmeetingroom/"><img src="http://localhost:9000/space/images/footer_etc_sns01.png" alt="�ν�Ÿ"></a></li>
				<li><a target="_blank" href="https://www.facebook.com/kmeetingroom"><img src="http://localhost:9000/space/images/footer_etc_sns02.png" alt="���̽���"></a></li>
				<li><a target="_blank" href="http://blog.naver.com/kmeetingroom"><img src="http://localhost:9000/space/images/footer_etc_sns03.png" alt="���̹���α�"></a></li>
				<li><a target="_blank" href="https://pf.kakao.com/_Mxfaxnj"><img src="http://localhost:9000/space/images/footer_etc_sns04.png" alt="īī����"></a></li>
				<li><a target="_blank" href="https://www.youtube.com/channel/UCz681eSGt3wOKvqwirv9d4A/"><img src="http://localhost:9000/space/images/footer_etc_sns05.png" alt="��Ʃ��"></a></li>
			</ul>
		</div>
	</div>
</div>
<!-- e footer -->
</body>
</html>
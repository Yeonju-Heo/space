<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "com.myspace.vo.SessionVO" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
	SessionVO svo = (SessionVO)session.getAttribute("svo");
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://localhost:9000/space/js/jquery-3.6.0.min.js"></script>
<script>
//gnb
$(function(){
	var gnb = $('#gnb'),
		gnbDepth01 = $('.depth1 h3 a'),
		gnbDepth02 = $('.depth2 h4 a'),
		depth01 = $('.depth1'),
		depth02 = $('.depth2'),
		depth02li = $('.depth2 li'),
		gnbBg = $('.header_bg_box'),
		gnbSpeed = 250,
		logo = $('.logo a img'),
		logot = $('.logo'),
		logoSrc,
		gnbEtc = $('.gnb_etc');

	gnb.on('mouseenter', function(){
		gnb.addClass('on');
		logot.addClass('on');
		gnbBg.addClass('on');
		gnbEtc.addClass('on');
		logoSrc = logo.attr('src');
		logoSrc = logoSrc.replace('_off','_on');
		logo.attr('src', logoSrc);
	});
	gnb.on('mouseleave', function(){
		gnb.removeClass('on');
		logot.removeClass('on');
		gnbBg.removeClass('on');
		gnbEtc.removeClass('on');
		depth01.removeClass('focus');
		depth02li.removeClass('focus');
		depth02.stop(true).slideUp(gnbSpeed);
		logoSrc = logo.attr('src');
		logoSrc = logoSrc.replace('_on','_off');
		logo.attr('src', logoSrc);
	});

	gnbDepth01.on('mouseenter focusin', function(){
		gnb.addClass('on');
		gnbBg.addClass('on');
		gnbEtc.addClass('on');
		logoSrc = logo.attr('src');
		logoSrc = logoSrc.replace('_off','_on');
		logo.attr('src', logoSrc);
		depth01.removeClass('focus');
		$(this).parents('.depth1').addClass('focus');
		depth02.slideUp(gnbSpeed);
		$(this).parents('.depth1').find('.depth2').slideDown(gnbSpeed);
	});
	gnbDepth01.on('mouseleave focusout', function(){
		depth01.removeClass('focus');
	});

	gnbDepth02.on('mouseenter focusin', function(){
		depth01.removeClass('focus');
		depth02li.removeClass('focus');
		$(this).parents('.depth1').addClass('focus');
		$(this).parent().parent().addClass('focus');
	});

	gnbDepth02.on('mouseleave focusout', function(){
		$(this).parent().parent().removeClass('focus');
	});

	depth01.last().find('.depth2').find('li').last().find('h4').find('a').on('focusout', function(){
		gnb.removeClass('on');
		gnbBg.removeClass('on');
		gnbEtc.removeClass('on');
		depth01.removeClass('focus');
		depth02li.removeClass('focus');
		depth02.stop(true).slideUp(gnbSpeed);
		logoSrc = logo.attr('src');
		logoSrc = logoSrc.replace('_on','_off');
		logo.attr('src', logoSrc);
	});
});
</script>
</head>
<body>
	<header>
		<!-- s header -->
	<div id="header">
		<div class="header_inner">
				<h1 class="logo"><a href="http://localhost:9000/space/index.do"><img src="http://localhost:9000/space/images/logo_off.png" width=30px; height=27px;>�����̽�����</a></h1>
		
			
			<ul id="gnb">
			
				<li class="depth1"><h3><a href="http://localhost:9000/space/introduce.do">�����̽�����<span class="gnb_bar"></span></a></h3>
					<ul class="depth2">
						<li><h4><a href="http://localhost:9000/space/introduce.do">�����̽����� �Ұ�</a></h4></li>
						<li><h4><a href="http://localhost:9000/space/guide.do">�̿� �ȳ�</a></h4></li>
						<li><h4><a href="http://localhost:9000/space/partner.do">��Ʈ�� ��� �ȳ�</a></h4></li>
					</ul>
				</li>
				
				<li class="depth1"><h3><a href="#">ȸ�ǽ�<span class="gnb_bar"></span></a></h3>
				</li>
				
				<li class="depth1"><h3><a href="#">ȭ�� ȸ�ǽ�<span class="gnb_bar"></span></a></h3>
					<ul class="depth2">
						<li><h4><a href="#">ȭ�� ȸ�ǽ� ã��</a></h4></li>
						<li><h4><a href="#">ȭ�� ��� ��Ż</a></h4></li>
						<li><h4><a href="#">�����ȭ ��Ʃ��� ã��</a></h4></li>
						<li><h4><a href="#">�����ȭ ����Ʈ����</a></h4></li>
					</ul>
				</li>
				
				<li class="depth1"><h3><a href="http://localhost:9000/space/notice.do?rpage=1">������<span class="gnb_bar"></span></a></h3>
					<ul class="depth2">
						<li><h4><a href="http://localhost:9000/space/notice.do?rpage=1">��������</a></h4></li>
						<li><h4><a href="http://localhost:9000/space/faq.do?rpage=1">���ֹ��� ����</a></h4></li>
						<li><h4><a href="http://localhost:9000/space/mypage_inquiry.do">1:1 ����</a></h4></li>
					</ul>
				</li>
				
			</ul>
			
			<c:choose>
				<c:when test="${sessionScope.svo != null }">
				<ul class="gnb_etc">
					<li><a href="http://localhost:9000/space/logout.do">�α׾ƿ�</a></li>
					<li><a href="#">���� ȸ�ǽ�</a></li>
					<c:if test="${sessionScope.svo.id=='admin@naver.com' }">     	
					<li><a href="http://localhost:9000/space/admin.do">Admin</a></li>
					</c:if>
				</ul >	
				<ul class="gnb_etc hi" >
					<li><a href="#">�ȳ��ϼ��� ${sessionScope.svo.name }�� ȯ���մϴ�</a></li>
				</ul>
				</c:when>
				<c:otherwise>
				<ul class="gnb_etc">
					<li><a href="http://localhost:9000/space/login.do">�α���</a></li>
					<li><a href="http://localhost:9000/space/join_main.do">ȸ������</a></li>
					<li><a href="#">���� ȸ�ǽ�</a></li>
				</ul>
				</c:otherwise>
			</c:choose>
			
			
<%-- 			<% if(svo == null){ %>
				<ul class="gnb_etc">
					<li><a href="http://localhost:9000/space/login.do">�α��� </a></li>
					<li><a href="http://localhost:9000/space/join_main.do">ȸ������ </a></li>
					<li><a href="#">���� ȸ�ǽ�</a></li>
				</ul>
			<% }else{ %>
				<%if(svo.getId().equals("admin@naver.com")) {%>
					<ul class="gnb_etc">
						<li><a href="http://localhost:9000/space/logout.do">�α׾ƿ� </a></li>
						<li><a href="#">Admin </a></li>
					</ul>
				<%}else {%>
					<ul class="gnb_etc">
						<li><a href="http://localhost:9000/space/logout.do">�α׾ƿ� </a></li>
						<li><a href="#">���� ȸ�ǽ�</a></li>
					</ul>
				<% } %>
			<% } %> --%>
			
			
			<!-- <ul class="gnb_etc">
					<li><a href="http://localhost:9000/space/join_main.do">ȸ������</a></li>
					<li><a href="http://localhost:9000/space/login.do">�α���</a></li>
					<li><a href="#">���� ȸ�ǽ�</a></li>
			</ul> -->

			<form id="logout-form" action="#" method="POST" style="display: none;">
				<input type="hidden" name="_token" value="JG5lgwlj2eG3zfWUYfpnf9hNuVbiZPMNDhRvYBQz">			</form>
		</div>
		<div class="header_bg_box"></div>
	</div>
	<!-- e header -->
	
	
	</header>
</body>
</html>
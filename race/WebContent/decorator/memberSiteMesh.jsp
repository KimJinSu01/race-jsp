<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- <link href="../css/bootstrap.css" rel="stylesheet"> -->


<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/modern-business.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="css/joinCss.css" rel="stylesheet">	

<style>
nav#aaaa a:hover{
	font-size:15pt;
}
.navbar-brand {
	font-size: 70px;
}

.btn-defalut {
	width: 100%;
	text-align: center;
}

.navlogo {
	height: 50px;
}

.di {
	font-size: 20px;
	font-weight: bold;
}

#ft {
	width: 100%;
	text-align: center;
	height: 50%;
}
</style>
<decorator:head />
</head>
<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <nav class="navlogo" id = "aaaa">
         <div class="container-fluid">
            <div class="navbar-header"></div>
             
              <ul class="nav navbar-nav navbar-right">
               <li><a href="qnaListForm.do">Q & A</a></li>
            </ul>
            
             <ul class="nav navbar-nav navbar-right">
               <li><a href="loginForm.do">CART</a></li>
            </ul>
            
             <ul class="nav navbar-nav navbar-right">
               <li><a href="myPageForm.do">MY PAGE</a></li>
            </ul>
             
            
            
            <c:choose>
            <c:when test="${!empty loginUser}">
         	<ul class="nav navbar-nav navbar-right">
               <li><a href="logout.do"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
            </ul>
            </c:when>
            <c:otherwise>
            <ul class="nav navbar-nav navbar-right">
               <li><a href="joinForm.do"><span class="glyphicon glyphicon-log-in"></span>
                     회원가입</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
               <li><a href="admin/adminLoginForm.do"><span class="glyphicon glyphicon-log-in"></span>
                     adminLogin</a>
                     
                </li>
            </ul>
             <ul class="nav navbar-nav navbar-right">
               <li><a href="loginForm.do"><span class="glyphicon glyphicon-log-in"></span>
                     memberLogin</a>
                </li>
            </ul>
           
            </c:otherwise>
            </c:choose>
         </div>
        
       
      </nav>
	
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.do">RACE</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="di">
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="productHybrid.do">하이브리드</a></li>
						<li><a href="productMtb.do">MTB</a></li>
						<li><a href="productFixi.do">픽시</a></li>
						<li><a href="productElectric.do">전기바이크</a></li>
				</ul>
			</div>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container -->
	</nav>
	<decorator:body />

	<footer>
		<div class="row" id="ft" style="height:150px;">
			<hr>
			<div class="col-lg-12">
				<p>
					회사명 : RACE &nbsp;&nbsp;대표자 : 임종구 &nbsp;&nbsp;&nbsp;&nbsp;E-Mail :
					stee90@naver.com &nbsp;&nbsp;&nbsp;&nbsp;Tel : 042-123-4567 <br>
					Fax : 042-123-5678&nbsp;&nbsp;&nbsp;&nbsp;사업자번호 :
					306-82-05291&nbsp;&nbsp;&nbsp;&nbsp;301-805 대전광역시 중구 중앙로 76
					(대흥동,영민빌딩 2층)<br> <br> copyright © RACE.&nbsp;&nbsp; All
					Rights Reserved.
				</p>
			</div>
		</div>
	</footer>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Script to Activate the Carousel -->
	<script>
		$('.carousel').carousel({
			interval : 5000
		//changes the speed
		})
	</script>

</body>
</html>
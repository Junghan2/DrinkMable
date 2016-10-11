<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Jsp address http://localhost:8080/DrinkMable/background.jsp -->
<!-- Servlet address http://localhost:8080/DrinkMable/cube -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"  href="/DrinkMable/css/cube.css"/> 
<script type="text/javascript" src="/DrinkMable/js/jquery-3.1.1.js"></script>
<title>애니메이션 테스트 페이지</title>
</head>
<body>
<!-- <img style="position :absolute;top:0px;left:0px;width:100%; height:100%; " src="/DrinkMable/img/pan.png"/>
 -->
	<div class="wrapper">
		<div class="cube">
			<div class="front side">front</div>
			<div class="back side">back</div>
			<div class="left side">left</div>
			<div class="right side">right</div>
			<div class="top side">top</div>
			<div class="bottom side">bottom</div>
		</div>
	</div>

	<style>

	#card{
		border:3px solid black;
		height:200px;
		width:500px;
	}

	#selectedCard {
		position : relative;
		background:gray;
		height:200px;
		width:500px;
	}
	#viewDetail {
		position : relative;
		background:aqua;
		height:200px;
		width:500px;
		transform : rotateY(180deg);
	}
	
	
	.flipCard{
		animation : flipCard 1s linear;
	}
	
	@keyframes flipCard {
    0%   {transform : rotateX(0deg)}
    100% {transform : rotateX(180deg)}
	}
	</style>
	<!-- 카드 뒤집기 -->
	<script type="text/javascript">
	$().ready(function(){
		$("#viewDetail").click(function(){
			alert("제이쿼리가 정상적으로 작동합니다(viewDetail)");
		});
		$("#selectedCard").click(function(){
			$("#card").addClass("flipCard");			
		});
		
		

	});
	</script>
	<div id="card">
	<div id="viewDetail">설명 보기</div>
	<div id="selectedCard">선택된 카드</div>
	</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"  href="/DrinkMable/css/flip.css"/> 
<script type="text/javascript" src="/DrinkMable/js/jquery-3.1.1.js"></script>
<script type="text/javascript">
$().ready(function(){
	$("#container").click(function(){
		alert("클릭하면?");
	});
	
});
</script>
</head>
<body>
<div class="flip-container" id="container" ontouchstart="this.classList.toggle('hover');">
  <div class="flipper">
    <div class="front">
      <span class="name">Post it</span>
    </div>
    <div class="back">
      <div class="back-logo"></div>
      <div class="back-title">V라인 옥수수 수염차</div>
      <p> 고온다습 직사광선을 피해 보관하시고, 개봉후에는 반드시 밀봉하여 냉장 보관하시고 빨리 드시기 바랍니다. </p>
    </div>
  </div>
</div>
</body>
</html>
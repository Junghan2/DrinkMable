<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/DrinkMable/css/carousel2.css">
<title>Insert title here</title>
<script type="text/javascript" src="/DrinkMable/js/jquery-3.1.1.js"></script>
<script type="text/javascript">
var carousel = $(".carousel"),
currdeg  = 0;

$(".next").on("click", { d: "n" }, rotate);
$(".prev").on("click", { d: "p" }, rotate);

function rotate(e){
if(e.data.d=="n"){
currdeg = currdeg - 60;
}
if(e.data.d=="p"){
currdeg = currdeg + 60;
}
carousel.css({
"-webkit-transform": "rotateY("+currdeg+"deg)",
"-moz-transform": "rotateY("+currdeg+"deg)",
"-o-transform": "rotateY("+currdeg+"deg)",
"transform": "rotateY("+currdeg+"deg)"
});
}
</script>

</head>
<body>
<div class="container">
  <div class="carousel">
    <div class="item a">A</div>
    <div class="item b">B</div>
    <div class="item c">C</div>
    <div class="item d">D</div>
    <div class="item e">E</div>
    <div class="item f">F</div>
  </div>
</div>
<div class="next">Next</div>
<div class="prev">Prev</div>
</body>
</html>
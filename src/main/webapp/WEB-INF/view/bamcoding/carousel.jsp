<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"  href="/DrinkMable/css/carousel.css"/> 
<title>Insert title here</title>
<script type="text/javascript">
var angle = 0;
function galleryspin(sign) { 
spinner = document.querySelector("#spinner");
if (!sign) { angle = angle + 45; } else { angle = angle - 45; }
spinner.setAttribute("style","-webkit-transform: rotateY("+ angle +"deg); -moz-transform: rotateY("+ angle +"deg); transform: rotateY("+ angle +"deg);");
}
</script>

</head>
<body>
<base href="https://s3-us-west-2.amazonaws.com/s.cdpn.io/4273/wanaka-tree.jpg">
<div id="carousel">
  <figure id="spinner">
    <img src="/DrinkMable/img/carousel/wanaka-tree.jpg" />
    <img src="/DrinkMable/img/carousel/still-lake.jpg" />
    <img src="/DrinkMable/img/carousel/pink-milford-sound.jpg" />
    <img src="/DrinkMable/img/carousel/paradise.jpg" />
    <img src="/DrinkMable/img/carousel/morekai.jpg" />
    <img src="/DrinkMable/img/carousel/milky-blue-lagoon.jpg" />
    <img src="/DrinkMable/img/carousel/lake-tekapo.jpg" />
    <img src="/DrinkMable/img/carousel/milford-sound.jpg" />
  </figure>
</div>
<span style="float:left" class="ss-icon" onclick="galleryspin('-')">&lt;</span>
<span style="float:right" class="ss-icon" onclick="galleryspin('')">&gt;</span>
</body>
</html>
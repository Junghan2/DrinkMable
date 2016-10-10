<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
#mainDiv {
	width: 400px;
	height: 400px;
	margin: 200px auto;
	border: 5px solid black;
	perspective: 800px;
}

#boxDiv {
	width: 400px;
}
#boxDiv div{
	position: absolute;
	width:400px;
	height: 400px;
}
#front{
	transform :translateZ(200px);
	background: red;
}
#back{
	transform : rotateY(180deg) translateZ(200px);
	background: blue;
}
#left{
	transform : rotateY(-90deg) translateX(-200px);
	transform-origin: left;
	background: pink;
}
#right{
	transform : rotateY(90deg) translateX(200px);
	transform-origin: right;
	background: yellow;
}
#top{
	transform : rotateX(-90deg) translateY(-200px);
	transform-origin: top;
	background: brown;
}
#bottom{
	transform : rotateX(90deg) translateY(200px);
	transform-origin: bottom;
	background: green;
}

}

</style>
<title>3D 큐브입니다.</title>
</head>
<body>
	<div id="mainDiv">
		<div id="boxDiv">
			<div id="front"></div>
			<div id="left"></div>
			<div id="right"></div>
			<div id="back"></div>
			<div id="top"></div>
			<div id="bottom"></div>

		</div>

	</div>



</body>
</html>
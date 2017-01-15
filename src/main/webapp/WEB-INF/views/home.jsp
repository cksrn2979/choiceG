<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/basic.css">

<style>

#header {
	box-shadow: 0px 2px 2px #ccc;
	width: 100%;
	height: 100px;
}

#header:after {
	display: block;
	clear: both;
}

#header #logo {
	float: left;
	width: 200px;
	height: auto;
	margin: 30px auto 20px 5%;
}

img {
	max-width: 100%;
	height: auto;
}

ul {
	display: block;
	float:right;
	margin-right : 30px;
}

ul li {
	float: left;
	position: realative;
	padding: 70px 0px 0px 60px;
}

ul li a {
	display: block;
	text-align: center;
	color: #aaa;
}

ul>li.on>a {
	color: #000;
}
</style>



<style>
#content {
	
}

#content>#main {
	line-height: 120%;
	margin: 20% auto 20% auto;
	color: #000;
	text-align: center;
	transform: rotate(345deg);
	animation-duration: 3s;
	animation-name: slidein;
	animation-iteration-count: infinite;
}

@
keyframes slidein {from { font-size:50px;
	
}

to {
	font-size: 100px;
}
}
</style>

<style>
footer {
	background-color: #EEE;
}
</style>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
	integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	crossorigin="anonymous"></script>

<script>
	$(document).ready(function() {
		var menu = $('nav>ul>li');

		menu.on({
			mouseover : function() {
				var tg = $(this);
				tg.addClass('on');
			},
			mouseout : function() {
				var tg = $(this);
				tg.removeClass('on');
			}
		});
	});
</script>
</head>
<body>

	<div id="header">

		<div id='logo'>
			<img src="${pageContext.request.contextPath}/resources/img/logo.png">
		</div>


		<ul>
			<li><a href="#">Who?</a></li>
			<li><a href="#">Portfolio</a></li>
			<li><a href="#">Contacts</a></li>
		</ul>


	</div>

	<div id="content">
		<div id="main">who are G?</div>
	</div>

	<footer> </footer>
</body>
</html>


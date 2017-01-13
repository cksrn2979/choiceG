<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/basic.css">

<style>
header {
	box-shadow: 0px 2px 2px #ccc;
}

header>#top {
	margin: 0 auto;
	width: 600px;
}

header>#top>#logo {
	width: 200px;
	height: auto;
	margin: 20px auto 20px auto;
}

img {
	max-width: 100%;
	height: auto;
}

nav ul:after {
	content: "";
	display: block;
	clear: both;
}

nav>ul>li {
	float: left;
	position: relative;
	width: 200px;
}

nav>ul>li>a {
	display: block;
	width: 200px;
	height: 30px;
	line-height: 30px;
	text-align: center;
	color: #aaa;
}

nav>ul>li.on>a {
	color: #000;
}
</style>



<style>
#content {
	
}

#content>#main {	
	line-height: 120%;
	margin: 10% auto 10% auto;
	color: #000;
	text-align: center;
	animation-duration: 3s;
	animation-name: slidein;
	animation-iteration-count: infinite;
}

@keyframes slidein {
	from { 
		font-size: 50px;	
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

	<header>
		<div id='top'>
			<div id='logo'>
				<img src="${pageContext.request.contextPath}/resources/img/logo.png">
			</div>

			<nav>
				<ul>
					<li><a href="#">Who?</a></li>
					<li><a href="#">Portfolio</a></li>
					<li><a href="#">Contacts</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<div id="content">
		<div id="main">who are G?</div>
	</div>

	<footer> </footer>
</body>
</html>


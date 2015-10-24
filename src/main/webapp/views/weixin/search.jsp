<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; chaRset=utf-8" />
<title>搜索</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" type="text/css"
	href="${rootPath }/resources/style/css/comment.css">
<link rel="stylesheet" type="text/css"
	href="${rootPath }/resources/style/css/search.css">
<script type="text/javascript"
	src="${rootPath }/resources/js/jquery-1.11.2.js"></script>
</head>
<body class="product-info">
	<div class="header">
		<span class="backspace"></span>
		<div class="_search">
			<span></span> <input type="text" name="keywords" placeholder="搜索你想吃的">
			<span></span>
		</div>
	</div>

	<div class="container">
		<div class="section">
			<h3>热门搜索</h3>
			<ul class="hot-search">
				<li><a href="#">小白菜</a></li>
				<li><a href="#">西冷牛排</a></li>
				<li><a href="#">大葱</a></li>
			</ul>
		</div>
		<div class="section">
			<h3>历史搜索</h3>
			<ul class="history-search">
				<li><a href="#"><span></span><i>西红柿</i><span></span></a></li>
				<li><a href="#"><span></span><i>茄子</i><span></span></a></li>
				<li><a href="#">点此查看更多</a></li>
			</ul>
		</div>
		<div class="section">
			<h3>猜你喜欢</h3>
			<ul class="love-search">
				<li><a href="#"> <img src="../img/vedetable.jpg"> <i>进口小白菜</i>
						<span>￥20</span> <span>500/g</span>
				</a></li>
				<li><a href="#"> <img src="../img/vedetable.jpg"> <i>进口小白菜</i>
						<span>￥20</span> <span>500/g</span>
				</a></li>
				<li><a href="#"> <img src="../img/vedetable.jpg"> <i>进口小白菜</i>
						<span>￥20</span> <span>500/g</span>
				</a></li>
			</ul>
		</div>
	</div>
	<%@include file="nav-footer.jsp" %>
</body>
</html>
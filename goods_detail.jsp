<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<title>商品详情</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/flexslider.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
	<script>
		$(function() {
		  $('.flexslider').flexslider({
			animation: "slide",
			controlNav: "thumbnails"
		  });
		});
	</script>
</head>
<body>
	 
	
	<jsp:include page="/header.jsp"></jsp:include>

	
	<!--商品详情页面-->
	<div class="single">
		<div class="container">
			<div class="single-grids">				
				<div class="col-md-4 single-grid">		
					<div class="flexslider">
					
						<ul class="slides">
							<li data-thumb="${pageContext.request.contextPath }${g.cover}">
								<div class="thumb-image"> <img src="${pageContext.request.contextPath }${g.cover}" data-imagezoom="true" class="img-responsive"> </div>
							</li>
						</ul>
					
					</div>
				</div>	
				<div class="col-md-8 single-grid simpleCart_shelfItem">		
					<h3>${g.name }</h3>
					<p>${g.intro }</p>
					<div class="galry">
						<div class="prices">
							<h5 class="item_price">¥ ${g.price }</h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="btn_form">
						<a href="javascript:;" class="add-cart item_add" onclick="buy(${g.id})">加入购物车</a>	
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>
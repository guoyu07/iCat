<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<script>
	function showProductsAsideCategorys(cid){
	    $("div.eachCategory[cid="+cid+"]").css("background-color","white");
	    $("div.eachCategory[cid="+cid+"] a").css("color","#87CEFA");
	    $("div.productsAsideCategorys[cid="+cid+"]").show();
	}
	 
	function hideProductsAsideCategorys(cid){
	    $("div.eachCategory[cid="+cid+"]").css("background-color","#e2e2e3");
	    $("div.eachCategory[cid="+cid+"] a").css("color","#000");
	    $("div.productsAsideCategorys[cid="+cid+"]").hide();
	}
	
	$(function(){
	    $("div.eachCategory").mouseenter(function(){
	        var cid = $(this).attr("cid");
	        showProductsAsideCategorys(cid);
	    });
	    $("div.eachCategory").mouseleave(function(){
	        var cid = $(this).attr("cid");
	        hideProductsAsideCategorys(cid);
	    });
	    $("div.productsAsideCategorys").mouseenter(function(){
	    	var cid = $(this).attr("cid");
	    	showProductsAsideCategorys(cid);
	    });
	    $("div.productsAsideCategorys").mouseleave(function(){
	    	var cid = $(this).attr("cid");
	    	hideProductsAsideCategorys(cid);
	    });
	);
		
	var left = $("div#carousel-of-product").offset().left;
	$("div.categoryMenu").css("left",left-20);
	$("div.categoryWithCarousel div.head").css("margin-left",left);
	$("div.productsAsideCategorys").css("left",left-20);
</script>

<div class="categoryWithCarousel"> 
	<div class="headbar show1">
    	<div class="head" style="margin-left:215px">   
        	<span style="margin-left:10px" class="glyphicon glyphicon-th-list"></span>
       	 	<span style="margin-left:10px" >category</span>         
    	</div>  
    	<div class="rightMenu">
			<c:forEach items="${cs}" var="c" varStatus="st">
				<c:if test="${st.count<=3}">
					<span><a href="forecategory?cid=${c.id}">${c.name}</a></span>
				</c:if>	
			</c:forEach>
		</div>
    </div>
    
    <div style="position: relative; left: 195px;"><%@include file="categoryList.jsp" %></div>
    <!-- div style="position: relative; left: 0; top: 0;"><%@include file="products.jsp" %></div-->
    <div style="position: relative; left: 209px;"><%@include file="carousel.jsp" %></div>
    <div class="carouselBackgroundDiv"></div>
</div>
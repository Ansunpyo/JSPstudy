$(function() {
	var heightArray=new Array();
	$("nav ul ul").css({display:"name"});
	$("nav > ul > li").each(function() {heightArray.push($(this).find("ul").height());});
	console.log(heightArray.join(", "));
	$("nav > ul > li").hover(
		function() {
			var n=$(this).index();
			$(this).find("ul").css({display:"block", height:"0px"}).stop()
			.animate({height:heightArray[n] + "px"}), 300);
			$(this).find("a:first").addClass("on");
		},
		function() {
			$(this).find("ul").stop()
			.animate({height:"0px"}, 300,
				function() {$(this).css({display: "none"});}
			);
			$(this).find("a:first").removeClass("on");
		}
		
	);
	
});
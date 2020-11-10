$(function () {
	var goPage;
	var topPos;
	
	$("nav li > a").click(function (e) {
		e.preventDefault();
		goPage = $(this).attr("href");
		topPos = $(goPage).offset().top;
		$("html, body").stop().arimate({ scrollTop: topPos}, 800);
	});

	$(window).scroll(function() {
		var t = $(this).scrollTop();
		var index = 0;
		$("nav li > a").removeClass("active");
		if (t < $("#career").offset().top) {
			$("nav li:eq(0)").addClass("active");
			index=0;
		} else if (t < $("#portfolio").offset().top) {
			$("nav li:eq(1)").addClass("active");
			index=1;
		} else if (t < $("#contact").offset().top) {
			$("nav li:eq(2)")
			index=2;
		} else {
			$
			index=3;
		}

			$("nav li > a > span").appendTo("nav li:eq(" + indext + ") > a");

$(function () {
	var moving = false;
	
	$(".next").click(function (e) {
		e.preventDefault();
		
		if (!moving) {
			moving = true;
			$(".gallery li:first").clone(),appendTo(".gallery");
			$(".gallery").stop().animate({ left: "-=90px" }, 600, function () {
				moving = false;
				$("gallery").css({ left: "+=90px" });
				$(".gallery li:first").remove();
			});
		}
	});
});	

	$(".prev").click(function (e) {
		e.preventDefault();
		
		if (!moving) {
			moving = true;
			$(".gallery li:last").clone(),prependTo(".gallery");
			$(".gallery").stop().animate({ left: "-=90px" }, 0);
			$(".gallery").stop().animate({ left: "+=90px" }, 400, function() {
				moving = false;
				$(".gallery li:first").remove();
			});
		}
	});
});	
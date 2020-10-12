$(function () {
	$("html, body").on("DOMMouseScroll", function(e) {
		console.log("e.originalEvent.detail : " +e.originalEvent.detail);
	});
	$("html, body").on("mouseScroll", function(e) {
		console.log("e.originalEvent.wheelDelta : " +e.originalEvent.wheelDelta);
	});
	$("html, body").on("DOMMouseScroll , mousewhee", function(e) {
		if(e.originalEvent.wheelDelta == 150 || e.originalEvent.detail == -3) {
			$(".container").text("up scroll event");
		} else if(e.originalEvent.wheelDelta == - 150 || e.originalEvent.detail == 3) {
			$(".container").text("down scroll event");
		}
	});
});
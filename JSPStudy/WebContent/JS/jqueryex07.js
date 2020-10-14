$(function () {
	var distance = new Array(0, 600, 1200, 1800);
	$(".gallery").text(distance.join(", "));
	
	$(".prev").click(function (e) {
		e.preventDefault();
		var arrayData = distance.pop();
		distance.unshift(arrayData);
		$("gellery").text(distance.join(", "));
	});
	$(".next").click(function (e) {
		e.preventDefault();
		var arrayData = distance.shift();
		distance.push(arrayData);
		$(".gallery").text(distance.join(", "));
	});
});
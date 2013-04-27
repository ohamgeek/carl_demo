$(document).ready(function(){
	$('.greeting').click(function(){
		if ($(this).text()=="Welcome!") {
			$(this).text("Goodbye!");
		} else {
			$(this).text("Welcome!");
		}
	});
});
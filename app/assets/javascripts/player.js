$(function(){
	$('.play').on('click', function(e) {
		e.stopPropagation();
		e.preventDefault();
		$(this).parent().find('.player')[0].play();
		$(this).toggleClass('play stop');
	})
});
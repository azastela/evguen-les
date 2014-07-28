$(function(){
	$('.play').on('click', function(e) {
		e.stopPropagation();
		e.preventDefault();

		var cp = $(this).parent().find('.player')[0];

		if ($(this).hasClass('play')) {
			$('.stop').each(function() {
				var p = $(this).parent().find('.player')[0];
				p.pause();
				p.currentTime = 0;
				$(this).toggleClass('play stop');
			});
			cp.play();
		} else {
			cp.pause();
			cp.currentTime = 0;

		}

		$(this).toggleClass('play stop');
	})
});
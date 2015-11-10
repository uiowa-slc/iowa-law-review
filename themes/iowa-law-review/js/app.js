$( document ).ready(function() {

	$('.navbar-container').affix({
	  offset: { top: $('.navbar').offset().top }
	}).wrap(function() {
	  return $('<div></div>', {
	    height: $(this).outerHeight()
	  });
	});​


	// $('.article-social-container').affix({
	//   offset: { top: $('.article-container').offset().top }
	// }).wrap(function() {
	//   return $('<div></div>', {
	//     height: $(this).outerHeight()
	//   });
	// });​


});
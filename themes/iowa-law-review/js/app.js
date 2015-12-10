$( document ).ready(function() {

	$('.navbar-container').affix({
	  offset: { top: $('.navbar').offset().top }
	}).wrap(function() {
	  return $('<div></div>', {
	    height: $(this).outerHeight()
	  });
	});​

	$.bigfoot();

	$('.article-social-container-main').affix({
	  offset: { top: $('.article-container').offset().top }
	}).wrap(function() {
	  return $('<div></div>', {
	    height: $(this).outerHeight()
	  });
	});​


});

$(".header").click(function () {

    $header = $(this);
    //getting the next element
    $content = $header.next();
    //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
    $content.slideToggle(500, function () {
        //execute this after slideToggle is done
        //change text of header based on visibility of content div
        $header.text(function () {
            //change text based on condition
            return $content.is(":visible") ? "\u25B2 collapse text \u25B2" : "\u25BC read full text \u25BC";
        });
    });

});
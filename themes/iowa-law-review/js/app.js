$( document ).ready(function() {

	$('.navbar-container').affix({
	  offset: { top: $('.navbar').offset().top }
	}).wrap(function() {
	  return $('<div></div>', {
	    height: $(this).outerHeight()
	  });
	});​

	$.bigfoot({
		appendPopoversTo: "body"
	}
	);

	$('.article-social-container-main').affix({
	  offset: { top: $('.article-container').offset().top }
	}).wrap(function() {
	  return $('<div></div>', {
	    height: $(this).outerHeight()
	  });
	});​




});
$(function(){

if ($('.bigtext p').length > 5){
 
  var $blockquote = $('.bigtext');
  var height = $blockquote.height();
  var mini = $('.bigtext p').eq(0).height() + $('.bigtext p').eq(1).height() + $('.bigtext p').eq(2).height() + $('.bigtext p').eq(2).height();
 
  $blockquote.attr('data-fullheight',height+'px');
  $blockquote.attr('data-miniheight',mini+'px');
  $blockquote.css('height',mini+'px');

  $('.expand').on('click', function(e){
  	//alert('hey');
    $text = $(this).prev();
 
    $text.css({
      'height': $text.attr('data-fullheight')
    });
    $(this).next('.contract').removeClass('hide');
    $(this).addClass('hide');
  });
 
  $('.contract').on('click', function(e){
    $text = $(this).prev().prev();
 
    $text.css({
      'height': $text.attr('data-miniheight')
    });
    $(this).prev('.expand').removeClass('hide');
    $(this).addClass('hide');
  });
}else{
	$('.expand').addClass('hide');
}
});


$(".expand-header").click(function () {

    $header = $(this);
    //getting the next element
    $content = $header.next();
    //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
    $content.toggle(0, function () {
        //execute this after slideToggle is done
        //change text of header based on visibility of content div
        $header.text(function () {
            //change text based on condition
            return $content.is(":visible") ? "Show less -" : "Show more +";
        });
    });

});
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
  // $('.sidenav').affix({
  //   offset: { top: $('.main-content').offset().top }
  // }).wrap(function() {
  //   return $('<div></div>', {
  //     height: $(this).outerHeight()
  //   });
  // });​


          $(".sticky").sticky({
            topSpacing:0,
            bottomSpacing: $(".footer").height() + 100
          });

// var headerHeight = $('.main-content').offset().top; // true value, adds margins to the total height
// var footerHeight = $('.footer').innerHeight();
// // $('.sidenav').affix({
// //     offset: {
// //         top: headerHeight,
// //         bottom: footerHeight
// //     }
// // }).on('affix.bs.affix', function () { // before affix
// //     $(this).css({
// //         /*'top': headerHeight,*/    // for fixed height
// //             'width': $(this).outerWidth()  // variable widths
// //     });
// // }).on('affix-bottom.bs.affix', function () { // before affix-bottom
// //     $(this).css('bottom', 'auto'); // THIS is what makes the jumping
// // });

	// $('.article-social-container-main').affix({
	//   offset: { 
 //      top: $('.bigtext').offset().top + $('.navbar').outerHeight(true),
 //      bottom: ($('footer').outerHeight(true) + $('.article-nav-container').outerHeight(true))
 //     }
	// }).wrap(function() {
	//   return $('<div></div>', {
	//     height: $(this).outerHeight()
	//   });
	// });​

  $( "table" ).wrap( "<div class='table-responsive'></div>" );
  //$( ".table-responsive" ).wrap( "<div class='breakout'></div>" );
  $( "table" ).addClass('table')




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
      //'height': $text.attr('data-fullheight')
      'height' : 'auto'
    });

    $text.addClass('expanded');
    $(this).next('.contract').removeClass('hide');
    $(this).addClass('hide');
  });
 
  $('.contract').on('click', function(e){
    $text = $(this).prev().prev();
  $text.removeClass('expanded');
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
function toggleChevron(e) {
    $(e.target)
        .prev('.panel-heading')
        .find("i.indicator")
        .toggleClass('glyphicon-chevron-down glyphicon-chevron-up');
}
$('#accordion').on('hidden.bs.collapse', toggleChevron);
$('#accordion').on('shown.bs.collapse', toggleChevron);
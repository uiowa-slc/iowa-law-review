
/* ========================================================================
 * DOM-based Routing
 * Based on http://goo.gl/EUTi53 by Paul Irish
 *
 * Only fires on body classes that match. If a body class contains a dash,
 * replace the dash with an underscore when adding it to the object below.
 *
 * .noConflict()
 * The routing is enclosed within an anonymous function so that you can
 * always reference jQuery with $, even when in .noConflict() mode.
 * ======================================================================== */

(function($) {

  // Use this variable to set up the common and page specific functions. If you
  // rename this variable, you will also need to rename the namespace below.
  var Sage = {
    // All pages
    'common': {
      init: function() {
		$('.navbar-container').affix({
		  offset: { top: $('.navbar').offset().top }
		}).wrap(function() {
		  return $('<div></div>', {
		    height: $(this).outerHeight()
		  });
		});​
		function skipLink(el) {
			// bind a click event to the 'skip' link
			$(el).click(function(event){

				// strip the leading hash and declare
				// the content we're skipping to
				var skipTo="#"+this.href.split('#')[1];

				// Setting 'tabindex' to -1 takes an element out of normal
				// tab flow but allows it to be focused via javascript
				$(skipTo).attr('tabindex', -1).on('blur focusout', function () {

				// when focus leaves this element,
				// remove the tabindex attribute
				$(this).removeAttr('tabindex');

				}).focus(); // focus on the content container
			});


		};

		$( ".condensed-navbar input.form-control" ).focusin(function() {
		  $( ".navbar" ).addClass("search-expanded");
		});
		$( ".condensed-navbar input.form-control" ).focusout(function() {
		  $( ".navbar" ).removeClass("search-expanded");
		});
		 $(".sticky").sticky({
            topSpacing:0,
            bottomSpacing: $(".footer").height() + 100
          });


		skipLink('.skip-link');

		  $( "table" ).wrap( "<div class='table-responsive'></div>" );
		  //$( ".table-responsive" ).wrap( "<div class='breakout'></div>" );
		  $( "table" ).addClass('table')


      if (!location.origin)
        location.origin = location.protocol + "//" + location.host;

		  var base = location.origin + '/';

		  $('.pdf-viewable a[href$=".pdf"]').each(function( index ) {
		  	var pdfLinkHref = $( this ).attr('href');
			$( this ).attr('href', 'https://docs.google.com/viewer?url='+ base + pdfLinkHref + '&embedded=true') ;
			$(this).addClass('mfp-iframe');
			});



		  $('a[href^="https://docs.google.com/viewer"],a[href$=".jpg"]').magnificPopup({
		  	type:'image',
		  	  gallery:{
				    enabled:true
				  }
		  	}
		  );



      },
      finalize: function() {
        // JavaScript to be fired on all pages, after page specific JS is fired
      }
    },
    // Home page
    'HomePage': {
      init: function() {
        // JavaScript to be fired on the home page
      },
      finalize: function() {
        // JavaScript to be fired on the home page, after the init JS
      }
    },
    // AboutPage
    'AboutPage': {
      init: function() {
        // JavaScript to be fired on the home page
      },
      finalize: function() {

  			

      }
    },

    // About us page, note the change from about-us to about_us.
    'Article': {
      	init: function() {
		    $.bigfoot({
				appendPopoversTo: "body"
			}
			);
		

		}

    }
  };

  // The routing fires all common scripts, followed by the page specific scripts.
  // Add additional events for more control over timing e.g. a finalize event
  var UTIL = {
    fire: function(func, funcname, args) {
      var fire;
      var namespace = Sage;
      funcname = (funcname === undefined) ? 'init' : funcname;
      fire = func !== '';
      fire = fire && namespace[func];
      fire = fire && typeof namespace[func][funcname] === 'function';

      if (fire) {
        namespace[func][funcname](args);
      }
    },
    loadEvents: function() {
      // Fire common init JS
      UTIL.fire('common');

      // Fire page-specific init JS, and then finalize JS
      $.each(document.body.className.replace(/-/g, '_').split(/\s+/), function(i, classnm) {
        UTIL.fire(classnm);
        UTIL.fire(classnm, 'finalize');
      });

      // Fire common finalize JS
      UTIL.fire('common', 'finalize');



    }
  };

  // Load Events
  $(document).ready(UTIL.loadEvents);

})(jQuery); // Fully reference jQuery after this point.
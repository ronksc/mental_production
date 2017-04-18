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
 *
 * Google CDN, Latest jQuery
 * To use the default WordPress version of jQuery, go to lib/config.php and
 * remove or comment out: add_theme_support('jquery-cdn');
 * ======================================================================== */

(function($) {

// Use this variable to set up the common and page specific functions. If you 
// rename this variable, you will also need to rename the namespace below.
var Roots = {
  // All pages
  common: {
    init: function() {
      // JavaScript to be fired on all pages
	  
	  function initNavToggle(){
		 $('.navbar-toggle').click(function(){
			 if(!$('body').hasClass('popup_enable')){
				 $("#mobile_nav").transition({ x: 0 },500);
				 
				 $('body').addClass('popup_enable');
				 $('.dark_mask').fadeIn();
				 
				 $(".full_content_wrapper").transition({ x: -250 },500);
			 }
		 });
		 
		 $('.mobile_menu_close').click(function(){
			 $("#mobile_nav").transition({ x: 250 },500);
			 $('body').removeClass('popup_enable');
			 $('.dark_mask').fadeOut();
			 $(".full_content_wrapper").transition({ x: 0 },500);
		 });
	  }
	  
	  $(document).ready(function(e) {
		  initNavToggle();  
      });
    }
  },
  // Home page
  home: {
    init: function() {
      // JavaScript to be fired on the home page
	  function showHidePopup(){
		  $('.overlay_link').click(function(event){
			  event.preventDefault();
			  $('#project_popup').fadeIn();
			  $('body').addClass('popup_enable');
		  });
		  
		  $('.mfp-close').click(function(){
			  $('#project_popup').fadeOut();
			  $('body').removeClass('popup_enable');
		  });
	  }
	  
	  $(document).ready(function(){
		var container = $('#project_grid');
		
		showHidePopup();
	 
		container.isotope({
			itemSelector: '.grid_item',
			percentPosition: true,
			masonry:{
				columnWidth: container.find('.grid_item').not('.width2x').get(0),
			}
		});
			 
		container.imagesLoaded().progress( function() {
			container.isotope('layout');
		});
		
		$(window).resize(function(){
			container.isotope('layout');						  
		});
	  });
    }
  },
  // About us page, note the change from about-us to about_us.
  about_us: {
    init: function() {
      // JavaScript to be fired on the about us page
    }
  },
  page_template_template_contact_us: {
	init: function() {
		function new_map( $el ) {
	
			// var
			var $markers = $el.find('.marker');
			
			
			// vars
			var args = {
				zoom		: 16,
				minZoom		: 3,
				center		: new google.maps.LatLng(0, 0),
				//mapTypeId	: google.maps.MapTypeId.ROADMAP,
				styles:[{"featureType":"water","elementType":"geometry.fill","stylers":[{"color":"#d3d3d3"}]},{"featureType":"transit","stylers":[{"color":"#808080"},{"visibility":"off"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"visibility":"on"},{"color":"#b3b3b3"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#ffffff"},{"weight":1.8}]},{"featureType":"road.local","elementType":"geometry.stroke","stylers":[{"color":"#d7d7d7"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#ebebeb"}]},{"featureType":"administrative","elementType":"geometry","stylers":[{"color":"#a7a7a7"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"landscape","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#efefef"}]},{"featureType":"road","elementType":"labels.text.fill","stylers":[{"color":"#696969"}]},{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"visibility":"on"},{"color":"#737373"}]},{"featureType":"poi","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.arterial","elementType":"geometry.stroke","stylers":[{"color":"#d6d6d6"}]},{"featureType":"road","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"color":"#dadada"}]}]
			};
			
			
			// create map	        	
			var map = new google.maps.Map( $el[0], args);
			
			
			// add a markers reference
			map.markers = [];
			
			
			// add markers
			$markers.each(function(){
				
				add_marker( $(this), map );
				
			});
			
			
			// center map
			center_map( map );
			
			
			// return
			return map;
			
		}
		
		/*
		*  add_marker
		*
		*  This function will add a marker to the selected Google Map
		*
		*  @type	function
		*  @date	8/11/2013
		*  @since	4.3.0
		*
		*  @param	$marker (jQuery element)
		*  @param	map (Google Map object)
		*  @return	n/a
		*/
		
		function add_marker( $marker, map ) {
		
			// var
			var latlng = new google.maps.LatLng( $marker.attr('data-lat'), $marker.attr('data-lng') );
		
			// create marker
			var marker = new google.maps.Marker({
				position	: latlng,
				map			: map
			});
		
			// add to array
			map.markers.push( marker );
		
			// if marker contains HTML, add it to an infoWindow
			if( $marker.html() )
			{
				// create info window
				var infowindow = new google.maps.InfoWindow({
					content		: $marker.html()
				});
		
				// show info window when marker is clicked
				google.maps.event.addListener(marker, 'click', function() {
		
					infowindow.open( map, marker );
		
				});
			}
		
		}
		
		/*
		*  center_map
		*
		*  This function will center the map, showing all markers attached to this map
		*
		*  @type	function
		*  @date	8/11/2013
		*  @since	4.3.0
		*
		*  @param	map (Google Map object)
		*  @return	n/a
		*/
		
		function center_map( map ) {
		
			// vars
			var bounds = new google.maps.LatLngBounds();
		
			// loop through all markers and create bounds
			$.each( map.markers, function( i, marker ){
		
				var latlng = new google.maps.LatLng( marker.position.lat(), marker.position.lng() );
		
				bounds.extend( latlng );
		
			});
		
			// only 1 marker?
			if( map.markers.length === 1 )
			{
				// set center of map
				map.setCenter( bounds.getCenter() );
				map.setZoom( 16 );
			}
			else
			{
				// fit to bounds
				map.fitBounds( bounds );
			}
		
		}
		
		/*
		*  document ready
		*
		*  This function will render each map when the document is ready (page has loaded)
		*
		*  @type	function
		*  @date	8/11/2013
		*  @since	5.0.0
		*
		*  @param	n/a
		*  @return	n/a
		*/
		// global var
		var map = null;
		
		$(document).ready(function(){
			$('.map_container').height($(window).outerHeight());
			
		
			$('.acf-map').each(function(){
		
				// create map
				map = new_map( $(this) );
		
			});
		
			$(window).resize(function(){
				$('.map_container').height($(window).outerHeight());
				center_map( map );
			});
		
		});	
	}
  }
};

// The routing fires all common scripts, followed by the page specific scripts.
// Add additional events for more control over timing e.g. a finalize event
var UTIL = {
  fire: function(func, funcname, args) {
    var namespace = Roots;
    funcname = (funcname === undefined) ? 'init' : funcname;
    if (func !== '' && namespace[func] && typeof namespace[func][funcname] === 'function') {
      namespace[func][funcname](args);
    }
  },
  loadEvents: function() {
    UTIL.fire('common');

    $.each(document.body.className.replace(/-/g, '_').split(/\s+/),function(i,classnm) {
      UTIL.fire(classnm);
    });
  }
};

$(document).ready(UTIL.loadEvents);

})(jQuery); // Fully reference jQuery after this point.

// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .
$(document).ready(function() {
	$("form").bind("keypress", function(e) {
	        if (e.keyCode == 13) return false;
	  });
	$('div.controls input').each(function() {
	   if ($(this).attr("id").indexOf('_lot_no') > 0) {
	      $(this).typeahead({
			    source: function (query, process) {
	  	      return $.get('/typeahead/lot', { query: query }, function (data) {
	    	        return process(data);
	      	  });
	    		}
				});
	   }
	   if ($(this).attr("id").indexOf('_package') > 0) {
	      $(this).typeahead({
			    source: function (query, process) {
	  	      return $.get('/typeahead/package', { query: query }, function (data) {
	    	        return process(data);
	      	  });
	    		}
				});
	   }
	   if ($(this).attr("id").indexOf('_device') > 0) {
	      $(this).typeahead({
			    source: function (query, process) {
	  	      return $.get('/typeahead/device', { query: query }, function (data) {
	    	        return process(data);
	      	  });
	    		}
				});
	   }
	});
});
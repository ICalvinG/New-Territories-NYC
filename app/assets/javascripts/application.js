// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require materialize-sprockets

window.onload = function() {
	$("#google-click").click(function (e) {
			e.preventDefault();
		$("#contact-form").css("display", "none");
    	$("#google-maps").css("display", "block");
	});

	$("#contact-click").click(function (e) {
			e.preventDefault();
		$("#google-maps").css("display", "none");
    	$("#contact-form").css("display", "block");
	});

	if ($(".mobile-logo").css("display") == "none" ){
		setTimeout(function(){ $("#overlay p").css('display','none'); },30000)
		setTimeout(function(){ $("#overlay h5").css('display','none'); },30000)
    }
}

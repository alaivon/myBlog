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
//= require jquery-ui
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){
	$(function(){
	  $('#post_post_date').datepicker({
	  dateFormat: 'yy-mm-dd'
		});
	});
	$("#weight, #height").keyup(function(){
    var weight= $("#weight").val();
    var height= $("#height").val();
    var bmi = weight/(height/100*height/100);
    $("#bmi").val(bmi.toFixed(2));
	});
	$("#submit_bmi").on('click', function(){
		var bmi = +$("#bmi").val();
		if (isNaN(bmi)) {
		alert('Hey! You have to enter number.')
		} else {	
		alert('Hey! Your BMI is ' + bmi)
		}
	});
});

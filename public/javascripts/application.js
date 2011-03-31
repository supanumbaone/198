// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
	
	// Code for the Nested Replies on the show post page
	$('.comment_link').click(function() { 
		$('.comment_form, .edit_form, .edit_comment').hide();
		$(this).parent().find(".comment_form").show();
	});
	
	$('.edit_comment_link').click(function() { 
		$('.comment_form, .edit_form').hide();
		$(this).parent().find(".edit_comment").show();
		$(this).parent().find(".comment_body").hide();
	});
	
	$('.main_reply').click(function() { 
		$('.comment_form, .edit_form').hide();
		$(".comment_form_main").show();
	});
});
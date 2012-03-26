/**
 * Javascript features for the SilverStripe forum module. These have been 
 * ported over from the old Prototype system
 * 
 * @package forum
 */

(function($) {
	$(document).ready(function() {
		/**
		 * Handle the OpenID information Box.
		 * It will open / hide the little popup
		 */
	
		$("#ShowOpenIDdesc").click(function() {
			if($("#OpenIDDescription").hasClass("showing")) {
				$("#OpenIDDescription").hide().removeClass("showing");
			} else {
				$("#OpenIDDescription").show().addClass("showing");
			}
			return false;
		});
	
		$("#HideOpenIDdesc").click(function() {
			$("#OpenIDDescription").hide();
			return false;
		});
	
	
		/**
		 * BBCode Tools
		 * While editing / replying to a post you can get a little popup
		 * with all the BBCode tags
		 */
		$("#BBCodeHint").click(function() {
			if($("#BBTagsHolder").hasClass("showing")) {
				$(this).text("View Formatting Help");
				$("#BBTagsHolder").hide().removeClass("showing");
			} else {
				$(this).text("Hide Formatting Help");
				$("#BBTagsHolder").show().addClass("showing");
			}
			return false;
		});
	
		/** 
		 * MultiFile Uploader called on Reply and Edit Forms
		 */
		$('#Form_PostMessageForm_Attachment').MultiFile(); 
	
		/**
		 * Delete post Link.
		 *
		 * Add a popup to make sure user actually wants to do 
		 * the dirty and remove that wonderful post
		 */
	
		$('.postModifiers a.deletelink').click(function(){
			var link = $(this);
			var first = $(this).hasClass('firstPost');
			
			if(first) {
				if(!confirm("Are you sure you wish to delete this thread?\nNote: This will delete ALL posts in this thread.")) return false;
			} else {
				if(!confirm("Are you sure you wish to delete this post?")) return false;
			}

			$.post($(this).attr("href"), function(data) {
				if(first) {
					// if this is the first post then we have removed the entire thread and therefore
					// need to redirect the user to the parent page. To get to the parent page we convert
					// something similar to general-discussion/show/1 to general-discussion/
					var url = window.location.href;
					
					var pos = url.lastIndexOf('/show');
					
					if(pos > 0) window.location = url.substring(0, pos);
				}
				else {
					// deleting a single post. 
					link.parents(".singlePost").fadeOut();
				}
			});

			return false;
		});
	
		/**
		 * Mark Post as Spam Link.
		 * It needs to warn the user that the post will be deleted
		 */
		$('.postModifiers a.markAsSpamLink').click(function(){
			var link = $(this);
			var first = $(this).hasClass('firstPost');
			
			if(!confirm("Are you sure you wish to mark this post as spam? This will remove the post, and suspend the user account")) return false;
			
			$.post($(this).attr("href"), function(data) {
				if(first) {
					// if this is the first post then we have removed the entire thread and therefore
					// need to redirect the user to the parent page. To get to the parent page we convert
					// something similar to general-discussion/show/1 to general-discussion/
					var url = window.location.href;
					
					var pos = url.lastIndexOf('/show');
					
					if(pos > 0) window.location = url.substring(0, pos);
				}
				else {
					window.location.reload(true);
				}
			});
		
			return false;
		});
		
		/**
		 * Delete an Attachment via AJAX
		 */
		$('a.deleteAttachment').click(function() {
			if(!confirm("Are you sure you wish to delete this attachment")) return false;
			var id = $(this).attr("rel");
		
			$.post($(this).attr("href"), function(data) {
				$("#CurrentAttachments li.attachment-"+id).fadeOut(); // hide the deleted attachment
			});
		
			return false;
		});
	
		/**
		 * Subscribe / Unsubscribe button
		 */
		$("td.replyButton a.subscribe").click(function() {
			$.post($(this).attr("href"), function(data) {
				if(data == 1) {
					$("td.replyButton a.subscribe").fadeOut().hide();
					$("td.replyButton a.unsubscribe").fadeIn();
				}
			});
			return false;
		});
	
		$("td.replyButton a.unsubscribe").click(function() {
			$.post($(this).attr("href"), function(data) {
				if(data == 1) {
					$("td.replyButton a.unsubscribe").fadeOut().hide();
					$("td.replyButton a.subscribe").fadeIn();
				}
			});
			return false;
		});
	})
})(jQuery);
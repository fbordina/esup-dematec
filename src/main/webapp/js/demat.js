    $(document).ready(function() {  	
    	
    	
    	// Verification longueur min du password 
    	$("#changePasswordForm").submit(function( event ) {  	
			var newPasswd = $('#_changepassword_newpassword');
			if (newPasswd.val().length < 6) {
				alert('Merci de saisir un password contenant au moins 6 caractères.');
				 event.preventDefault();
			} 
    	});
    	$(".password-container #User").submit(function( event ) {  	
			var newPasswd = $('#_password_id');
			if (newPasswd.val().length < 6) {
				alert('Merci de saisir un password contenant au moins 6 caractères.');
				 event.preventDefault();
			} 
    	});
    	
    	$('.password-container').pschecker({ 
    	});
    	
    	
    	
    	function toogleSidebarLeft() {
    	    $('#toggleSidebar i').addClass('icon-chevron-right');
    	    $('#toggleSidebar i').removeClass('icon-chevron-left');
  	        $('#demat-right').removeClass('span9');
	        $('#demat-right').addClass('span12');
	        $('#demat-left').hide();
	        sessionStorage.setItem("dematSidebar", "left");
    	}
    	
    	function toogleSidebarRight() {
    	    $('#toggleSidebar i').removeClass('icon-chevron-right');
    	    $('#toggleSidebar i').addClass('icon-chevron-left');
  	        $('#demat-right').removeClass('span12');
	        $('#demat-right').addClass('span9');
	        $('#demat-left').show();
	        sessionStorage.setItem("dematSidebar", "right");
    	}
    	
    	// toogle sur menu gauche    	
    	$('#toggleSidebar').click(function() {
    	  if ($('#toggleSidebar i').hasClass('icon-chevron-left')) {
    		  toogleSidebarLeft();
    	  } else {
    		  toogleSidebarRight();
    	  }
    	});

    	if(sessionStorage.getItem("dematSidebar") === "left") {
    		toogleSidebarLeft();
    	}
    	
    });  
    
    
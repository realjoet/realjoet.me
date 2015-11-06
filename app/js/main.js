$(function(){
	function enableSkrollr(){
		console.log('We are on desktop');

		 //init Skrollr, disabling for touch devices
		 if (!Modernizr.touch){
            var s = skrollr.init({
                forceHeight: false
            });
        }
	}

	function disableSkrollr(){
		console.log('We are on mobile');

		var s= skroller.init();
		//destroy disables Skrollr
		s.destroy();
	}

	enquire.register("screen and (min-width: 768px)", {
	    match : function() {
	        enableSkrollr();
	    },  
	    unmatch : function() {
	        disableSkrollr();
	    }
	})
})
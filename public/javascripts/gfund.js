$(function(){
    $(".help").tooltip({
	    bodyHandler: function() {
		    return $($(this).attr("href")).html();
	    },
	    showURL: false
    });
  $(".simple_form legend").click(function(){
    $this = $(this);
    $this.nextAll().toggle();
  });
});


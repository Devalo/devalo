# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "page:change", ->
  hidden = $('hidden')
  $('#slide_headline').delay("500").animate(left: '20%')
  $('#slide_p1').delay("800").animate(left: '25%')
  $('#slide_p2').delay("1100").animate(left: '30%')
  $('#slide_image').delay("800").animate(left: '30%')
    
    
    



#<script>
#$( "button" ).click(function() {
#  $( "div.first" ).slideUp( 300 ).delay( 800 ).fadeIn( 400 );
#  $( "div.second" ).slideUp( 300 ).fadeIn( 400 );
#});
#</script #
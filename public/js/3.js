$(document).ready(function(){
 $( "form" ).on( "submit", function( event ){
    event.preventDefault();
    
    var info = $( this ).serialize();
    $.post('/rolls', info, function(data){
      console.log("hola");
      $('#die').html(data)
    });
  });

});
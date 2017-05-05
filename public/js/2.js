$(document).ready(function(){


 $( ".answer_vot_positive" ).on( "click", function( event ){
    event.preventDefault();
   var new_var = $( this ).attr("value");
   console.log(new_var);
   console.log("hola");
    $.get('/positive_vote_answer', {answer_id: new_var}, function(data){
      $('#die').html(data)
    });
  });

$( ".answer_vot_negative" ).on( "click", function( event ){
    event.preventDefault();
   var new_var1 = $( this ).attr("value");
   console.log(new_var1);
   console.log("hola");
    $.get('/negative_vote_answer', {answer_id: new_var1}, function(data){
      $('#die').html(data)
    });
  });

  $( ".question_vot_positive" ).on( "click", function( event ){
    event.preventDefault();
   var new_var2 = $( this ).attr("value");
   console.log(new_var2);
   console.log("hola");
    $.get('/positive_vote_question', {question_id: new_var2}, function(data){
      $('#die').html(data)
    });
  });


 $( ".question_vot_negative" ).on( "click", function( event ){
    event.preventDefault();
   var new_var3 = $( this ).attr("value");
   console.log(new_var3);
   console.log("hola");
    $.get('/negative_vote_question', {question_id: new_var3}, function(data){
      $('#die').html(data)
    });
  });


});


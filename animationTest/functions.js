$("button").click(function (e) {
    e.preventDefault();
    $( "p:first" ).html($("p:first").html()+$(this).html());
   if($(this).html()=="="){
    var operation=$( "p:first" ).html();
    operation = operation.substring(0, operation.length - 1);
    console.log("operatojn:: "+operation);
    let result=eval(operation);
    console.log("result:: "+result);
    $( "p:first" ).html("="+result);
   }
   if($(this).html()=="C"){
    $( "p:first" ).html("");
   }  
});


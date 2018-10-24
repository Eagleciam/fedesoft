function launchCalculator() {
    var operation = prompt("Please enter your operation, ejm: 2+3; 3<8; 5*3; ...");
        let result=eval(operation);
        document.getElementById("demo").innerHTML="Operación: " + operation+"<br>"+" Resultado= "+result;      
}
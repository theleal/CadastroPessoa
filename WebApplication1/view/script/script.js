var objTextName1 = document.getElementById("TextName1");
var regex = /^[a-zA-Z\s]+$/;

objTextName1.addEventListener("keyup", function validar() {

    var texto = objTextName1.value;
    console.log(texto);
    var isMatch = regex.test(texto);

    if (!isMatch) {
        objTextName1.value = "";

    }


});

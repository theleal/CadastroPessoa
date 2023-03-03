//impedir caracteres invalidos no campo nome

var objTextName1 = document.getElementById("CampoNome");
var regex = /^[a-zA-Z\s]+$/;

objTextName1.addEventListener("input", function validar() {

    var texto = objTextName1.value;
    console.log(texto);
    var isMatch = regex.test(texto);

    if (!isMatch) {
        objTextName1.value = "";

    }


});


// impedir caracteres invalidos no campo CPF e validar valor

var ElementoCPF = document.getElementById("CampoCPF");
var regexCPF = /^([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})$/;

ElementoCPF.addEventListener("change", function validarCPF() {
    var TextoCPF = ElementoCPF.value;
    var matchCPF = TextoCPF.match(regexCPF);

    if (!matchCPF) {
        alert("CPF inválido");
        ElementoCPF.setCustomValidity("CPF inválido");
        ElementoCPF.value = "";
    } else {
        var cpfSemFormato = matchCPF.slice(1).join("");
        if (validarCpf(cpfSemFormato)) {
            // CPF válido
            var cpfFormatado = matchCPF.slice(1).join(".");
            cpfFormatado = cpfFormatado.slice(0, 3) + "." + cpfFormatado.slice(4, 7) + "." + cpfFormatado.slice(8, 11) + "-" + cpfFormatado.slice(12,14);
            ElementoCPF.setCustomValidity("");
            ElementoCPF.value = cpfFormatado;
        } else {
            // CPF inválido
            ElementoCPF.setCustomValidity("CPF inválido");
        }
    }
});
ElementoCPF.addEventListener("keypress", function (e) {
    if (!/[0-9]/.test(String.fromCharCode(e.keyCode))) {
        e.preventDefault();
    }
});
function validarCpf(cpf) {
    var soma = 0;
    var resto;
    if (cpf == "00000000000") return false;

    for (i = 1; i <= 9; i++)
        soma = soma + parseInt(cpf.substring(i - 1, i)) * (11 - i);
    resto = (soma * 10) % 11;

    if ((resto == 10) || (resto == 11)) resto = 0;
    if (resto != parseInt(cpf.substring(9, 10))) return false;

    soma = 0;
    for (i = 1; i <= 10; i++)
        soma = soma + parseInt(cpf.substring(i - 1, i)) * (12 - i);
    resto = (soma * 10) % 11;

    if ((resto == 10) || (resto == 11)) resto = 0;
    if (resto != parseInt(cpf.substring(10, 11))) return false;
    return true;
}



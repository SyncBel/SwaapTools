window.onload = function() {
    loadMarca();
};

function loadMarca(){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var marcas = JSON.parse(xhttp.responseText);
            console.log(marcas);
            var selectMarca = document.getElementById("selectMarca");
            for(var i = 0; i < marcas.length; i++){
                var option = document.createElement("option");
                option.text = marcas[i].descricao;
                option.value = marcas[i].cod_marca;
                selectMarca.add(option);
            }
            xhttp.responseText;

        }
    };
    xhttp.open("GET", "consultaMarca.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
}


function cadastraPeca() {
    var xhttp = new XMLHttpRequest();
    var cod_descricaoPeca = null;
    var qnt_memoria = null;
    var versao = null;
    var threads = null;
    var nucleos = null;
    var frequencia = null;
    var desc_ddr = null;
    var desc_soquete = null;
    var cod_modelo = null;
    var params =    "cod_descricaoPeca="    + cod_descricaoPeca + 
                    "&qnt_memoria="         + qnt_memoria + 
                    "&versao="              + versao + 
                    "&threads="             + threads + 
                    "&nucleos="             + nucleos + 
                    "&frequencia="          + frequencia + 
                    "&desc_ddr="            + desc_ddr + 
                    "&desc_soquete="        + desc_soquete + 
                    "&cod_modelo="          + cod_modelo;
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
       alert("Item Cadastrado!");
      }
    };
    xhttp.open("POST", "cadastroDescricaoPeca.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send(params);
}


$("cadastroPlacaVideo").click(function(){
    $.post("cadastroPlacaVideo.php",
    {
        cod_placadevideo: "",
        cod_modelo: "",
        qnt_memoria: "",
        cod_soquete: ""
    },
    function(data, status){
        alert("Placa de video cadastrada!");
    });
});


/*
Lista de coleta de dados necessário:

Obs: Procurar colocar os mais comuns.
Obs2: Ao coletar as informações, deixar armazenado em um excel o link do site consultado, marca e modelo da peça que serviu de base

Soquete (Ex: LGA1151)
DDR (Ex: DDR3)
Versão (Ex: 5500, 5500k) -> Basicamente a geração dos processadores
Threads (Principais quantidades de threads presentes em um processador)
Nucleos (Principais quantidades de nucleos presentes em um processador)
Frequencia (Principais frequencias encontradas em um processador // Placa de video)
*/
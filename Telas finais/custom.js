window.onload = function() {
    loadMarca();
    //selectSession();
    loadModelo();
    buscaPeca();
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

function loadModelo(){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var modelo = JSON.parse(xhttp.responseText);
            console.log(modelo);
            var selectModelo = document.getElementById("selectModelo");
            for(var i = 0; i < modelo.length; i++){
                var option = document.createElement("option");
                option.text = modelo[i].descricao;
                option.value = modelo[i].cod_modelo;
                selectModelo.add(option);
            }
            xhttp.responseText;
        }
    };
    xhttp.open("GET", "consultaModelo.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
}

function selectModelo(){
    var xhttp = new XMLHttpRequest();
    var cod = document.getElementById("selectMarca").value;
    console.log("cod="+cod);
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            console.log(xhttp.responseText);
            var marcas = JSON.parse(xhttp.responseText);
            console.log(marcas);
            var selectMarca = document.getElementById("selectModelo");
            for(var i = 0; i < marcas.length; i++){
                var option = document.createElement("option");
                option.text = marcas[i].descricao;
                option.value = marcas[i].cod_marca;
                selectMarca.add(option);
            }
            xhttp.responseText;
        }
    };
    xhttp.open("POST", "consultaModelo.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("cod="+cod);
}

function selectPecas(){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var marcas = JSON.parse(xhttp.responseText);
            xhttp.responseText;
        }
    };
    xhttp.open("GET", "consultaMarca.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
}

function selectSession(){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            console.log(xhttp.responseText);
            return xhttp.responseText;
        }
    };
    xhttp.open("GET", "../getSession.php", true);
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

function buscaPeca(){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("listapeca").innerHTML = xhttp.responseText;
        }
    };
    xhttp.open("GET", "consultaPecaLayout.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
}
function buscaPecaTipo(num){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("listapeca").innerHTML = xhttp.responseText;
        }
    };
    xhttp.open("GET", "consultaPecaLayoutNum.php?num="+num, true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
}

function buscaPecaTexto(){
    var text = document.getElementById("textobusca").value;
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("listapeca").innerHTML = xhttp.responseText;
        }
    };
    xhttp.open("GET", "consultaPecaLayoutBusca.php?text="+text, true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send();
}
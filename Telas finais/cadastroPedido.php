<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_peca = $_GET["cod_peca"];
    $cpf = $_GET["cpf"];
    if($banco->queryNoResult("INSERT INTO pedido(
                                            cod_peca,
                                            cpf) 
                                        VALUES (
                                            {$cod_peca},
                                            {$cpf})")){
        echo "Solicitação enviada, aguarde o contato do dono da peça";
    } else{
        echo "INSERT INTO peca(
            cod_peca,
            cpf) 
        VALUES (
            {$cod_peca},
            {$cpf}";
    }
?>
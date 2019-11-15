<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_peca = $_POST["cod_peca"];
    $cod_descricaoPeca = $_POST["cod_descricaoPeca"];
    $cpf = $_POST["cpf"];
    if($banco->queryNoResult("INSERT INTO peca(
                                            cod_peca, 
                                            cod_descricaoPeca,
                                            cpf) 
                                        VALUES (
                                            {$cod_peca},
                                            {$cod_descricaoPeca},
                                            {$cpf}")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO peca(
            cod_peca, 
            cod_descricaoPeca,
            cpf) 
        VALUES (
            {$cod_peca},
            {$cod_descricaoPeca},
            {$cpf}";
    }
?>
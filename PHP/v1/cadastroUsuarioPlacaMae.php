<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cpf = $_POST["cpf"];
    $cod_placamae = $_POST["cod_placamae"];
    $cod_usuarioram = $_POST["cod_usuarioram"];
    $tempo_uso = $_POST["tempo_uso"];
    if($banco->queryNoResult("INSERT INTO usuarioram (
        cod_soquete, 
        descricao) 
        VALUES (
            {$cpf},
            {$cod_placamae},
            {$cod_usuarioram},
            '{$tempo_uso}'
            )")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO soquete (
            cod_soquete, 
            descricao) 
            VALUES (
                {$cpf},
                {$cod_placamae},
                {$cod_usuarioram},
                '{$tempo_uso}'
                )";
    }
?>
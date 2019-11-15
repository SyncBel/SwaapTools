<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cpf = $_POST["cpf"];
    $cod_processador = $_POST["cod_processador"];
    $cod_usuarioprocessador = $_POST["cod_usuarioprocessador"];
    $tempo_uso = $_POST["tempo_uso"];
    if($banco->queryNoResult("INSERT INTO usuarioprocessador (
        cod_soquete, 
        descricao) 
        VALUES (
            {$cpf},
            {$cod_processador},
            {$cod_usuarioprocessador},
            '{$tempo_uso}'
            )")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO usuarioprocessador (
            cod_soquete, 
            descricao) 
            VALUES (
                {$cpf},
                {$cod_processador},
                {$cod_usuarioprocessador},
                '{$tempo_uso}'
                )";
    }
?>
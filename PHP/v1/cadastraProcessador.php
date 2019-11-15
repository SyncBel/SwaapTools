<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_placamae = $_POST["cod_processador"];
    $versao = $_POST["versao"];
    $threads = $_POST["threads"];
    $nucleos = $_POST["nucleos"];
    $frequencia = $_POST["frequencia"];
    $cod_modelo = $_POST["cod_modelo"];
    $cod_soquete = $_POST["cod_soquete"];
    if($banco->queryNoResult("INSERT INTO processador (
        cod_processador, 
        versao, 
        threads, 
        nucleos,
        frequencia,
        cod_modelo,
        cod_soquete) VALUES (
            {$cod_processador},
            '{$versao}',
            '{$threads}',
            '{$nucleos}',
            '{$frequencia}',
            {$cod_modelo},
            {$cod_soquete})")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO placavideo (
            cod_processador, 
            versao, 
            threads, 
            nucleos,
            frequencia,
            cod_modelo,
            cod_soquete) VALUES (
                {$cod_processador},
                '{$versao}',
                '{$threads}',
                '{$nucleos}',
                '{$frequencia}',
                {$cod_modelo},
                {$cod_soquete})";
    }
?>
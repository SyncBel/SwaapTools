<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_ram = $_POST["cod_ram"];
    $qnt_memoria = $_POST["qnt_memoria"];
    $frequencia = $_POST["frequencia"];
    $cod_ddr = $_POST["cod_ddr"];
    $cod_marca = $_POST["cod_marca"];
    if($banco->queryNoResult("INSERT INTO ram(
        cod_ram, 
        qnt_memoria,
        frequencia,
        cod_ddr,
        cod_marca) VALUES (
            {$cod_processador},
            {$qnt_memoria},
            '{$frequencia}',
            {$cod_ddr},
            {$cod_marca})")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO ram(
            cod_ram, 
            qnt_memoria,
            frequencia,
            cod_ddr,
            cod_marca) VALUES (
                {$cod_processador},
                {$qnt_memoria},
                '{$frequencia}',
                {$cod_ddr},
                {$cod_marca})";
    }
?>
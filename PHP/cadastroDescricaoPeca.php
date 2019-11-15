<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_descricaoPeca = $_POST["cod_descricaoPeca"];
    $qnt_memoria = $_POST["qnt_memoria"];
    $versao = $_POST["versao"];
    $threads = $_POST["threads"];
    $nucleos = $_POST["nucleos"];
    $frequencia = $_POST["frequencia"];
    $desc_ddr = $_POST["desc_ddr"];
    $desc_soquete = $_POST["desc_soquete"];
    $cod_modelo = $_POST["cod_modelo"];
    if($banco->queryNoResult("INSERT INTO descricaoPeca(
                                            cod_descricaoPeca, 
                                            qnt_memoria,
                                            versao,
                                            threads,
                                            nucleos,
                                            frequencia,
                                            desc_ddr,
                                            desc_soquete,
                                            cod_modelo) 
                                        VALUES (
                                            {$cod_descricaoPeca},
                                            {$qnt_memoria},
                                            '{$versao}',
                                            {$threads},
                                            {$nucleos},
                                            {$frequencia},
                                            '{$desc_ddr}',
                                            '{$desc_soquete}',
                                            {$cod_modelo})")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO descricaoPeca(
            cod_descricaoPeca, 
            qnt_memoria,
            versao,
            threads,
            nucleos,
            frequencia,
            desc_ddr,
            desc_soquete,
            cod_modelo) 
        VALUES (
            {$cod_descricaoPeca},
            {$qnt_memoria},
            '{$versao}',
            {$threads},
            {$nucleos},
            {$frequencia},
            '{$desc_ddr}',
            '{$desc_soquete}',
            {$cod_modelo})";
    }
?>
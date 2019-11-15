<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();

    if (isset($_POST["qnt_memoria"])) { $qnt_memoria = $_POST["qnt_memoria"];} else { $qnt_memoria = null; }
    if (isset($_POST["versao"])) { $versao = $_POST["versao"];} else { $versao = null; }
    if (isset($_POST["threads"])) { $threads = $_POST["threads"];} else { $threads = null; }
    if (isset($_POST["nucleos"])) { $nucleos = $_POST["nucleos"];} else { $nucleos = null; }
    if (isset($_POST["frequencia"])) { $frequencia = $_POST["frequencia"];} else { $frequencia = null; }
    if (isset($_POST["desc_ddr"])) { $desc_ddr = $_POST["desc_ddr"];} else { $desc_ddr = null; }
    if (isset($_POST["desc_soquete"])) { $desc_soquete = $_POST["desc_soquete"];} else { $desc_soquete = null; }
    if (isset($_POST["cod_modelo"])) { $cod_modelo = $_POST["cod_modelo"];} else { $cod_modelo = null; }
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
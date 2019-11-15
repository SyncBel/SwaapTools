<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $cod_pedido = $_POST["cod_pedido"];
    $cod_peca = $_POST["cod_peca"];
    $cpf = $_POST["cpf"];
    if($banco->queryNoResult("INSERT INTO peca(
                                            cod_pedido, 
                                            cod_peca,
                                            cpf) 
                                        VALUES (
                                            {$cod_pedido},
                                            {$cod_peca},
                                            {$cpf}")){
        echo "Concluido, necessário fazer o direcionamento.";
    } else{
        echo "INSERT INTO peca(
            cod_pedido, 
            cod_peca,
            cpf) 
        VALUES (
            {$cod_pedido},
            {$cod_peca},
            {$cpf}";
    }
?>
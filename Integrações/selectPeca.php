<?php
    include_once("banco.php");
    $banco = new Banco();
    $cpf = '00100200345';
    $resultado = $banco->resultToArray("SELECT * FROM peca WHERE cpf = {$cpf}");
    echo JSON_ENCODE($resultado);
?>
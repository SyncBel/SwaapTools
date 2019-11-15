<?php
    include_once("banco.php");
    $banco = new Banco();
    $cpf = '123456678901';
    $resultado = $banco->resultToArray("SELECT * FROM pedido WHERE cpf = {$cpf}");
    echo JSON_ENCODE($resultado);

?>
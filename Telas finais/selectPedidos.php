<?php
    include_once("banco.php");
    $banco = new Banco();
    session_start();
    $cpf = $_SESSION["usercpf"];
    $resultado = $banco->resultToArray("SELECT * FROM pedido WHERE cpf = {$cpf}");
    echo JSON_ENCODE($resultado);

?>
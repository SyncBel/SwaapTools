<?php
    
    include_once("banco.php");
    $banco = new Banco();
    $email = $_POST["email"];
    $senha = md5($_POST["senha"]);
    $resultado = $banco->resultToOneArray("SELECT * FROM usuario WHERE email = '{$email}' AND senha = '{$senha}'");
    if($resultado != null){
        var_dump($resultado);
        $_SESSION["usuario"] = $resultado;
    } else{
        var_dump($resultado);
    }
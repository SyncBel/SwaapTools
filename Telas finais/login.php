<?php
    session_start();
    include_once("banco.php");
    $banco = new Banco();
    $email = $_POST["email"];
    $senha = md5($_POST["senha"]);
    $resultado = $banco->resultToOneArray("SELECT * FROM usuario WHERE email = '{$email}' AND senha = '{$senha}'");
    if($resultado != null){
        
        $_SESSION["usuario"] = JSON_ENCODE($resultado);
        $_SESSION["usercpf"] = $resultado["cpf"];
        header("Location: index.html");
    } else{
        echo "Usuário ou senha incorretos!";
    }
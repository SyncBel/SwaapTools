<?php
//Obs: Preciso analisar o front para saber se é necessário alguma alteração
include_once("banco.php");
$banco = new Banco();
$email = $_POST["email"];
$senha = md5($_POST["senha"]);
$nome = $_POST["nome"];
$cpf = $_POST["cpf"];
$sobrenome = $_POST["sobrenome"];
$numero = $_POST["numero"];
$ddd = $_POST["DDD"];
if ($banco->queryNoResult("INSERT INTO usuario (cpf,nome,sobrenome,email,senha) VALUES ({$cpf},'{$nome}','{$sobrenome}','{$email}','{$senha}')")) {
    if($banco->queryNoResult("INSERT INTO telefone(cpf, numero, tipo, cod_ddd) VALUES ({$cpf},{$numero},'{Celular}',{$ddd})")){
        echo "Concluido, necessário fazer o direcionamento.";
        header("Location: login.html");
    }
    else{
        echo "INSERT INTO telefone(cpf, numero, tipo, cod_ddd) VALUES ({$cpf},{$numero},'{Celular}',{$ddd})";
    }
    
} else {
    echo "Dados Inconsistentes";
}
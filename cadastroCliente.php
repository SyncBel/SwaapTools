<?php
//Obs: Preciso analisar o front para saber se é necessário alguma alteração
include_once("banco.php");
$banco = new Banco();
$email = $_POST["email"];
$senha = md5($_POST["senha"]);
$nome = $_POST["nome"];
$cpf = $_POST["cpf"];
$sobrenome = $_POST["sobrenome"];
if ($banco->queryNoResult("INSERT INTO usuario (cpf,nome,sobrenome,email,senha) VALUES ({$cpf},'{$nome}','{$sobrenome}','{$email}','{$senha}')")) {
    echo "Concluido, necessário fazer o direcionamento.";
    
} else {
    echo "INSERT INTO usuario (cpf,nome,sobrenome,email,senha) VALUES ({$cpf},'{$nome}','{$sobrenome}','{$email}','{$senha}')";
}

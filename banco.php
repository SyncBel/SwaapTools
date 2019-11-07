<?php

    class Banco{
        public function AbreConexao(){
            return mysqli_connect("localhost","root","vertrigo","tcc");
        }
        public function queryResult($query){
            $conexao = $this->AbreConexao();
            return $conexao->query($query);
        }
        public function resultToOneArray($dado){
            $conexao = $this->AbreConexao();
            $array = array();
            $result = $conexao->query($dado);
            $array = $result->fetch_assoc();
            return $array;
        }
        public function resultToArray($dado){
            $conexao = $this->AbreConexao();
            $array = array();
            $result = $conexao->query($dado);
            while($row = $result->fetch_assoc()) {
                array_push($array,$row);
            }
            return $array;
        }
        public function queryNoResult($dado){
            $conexao = $this->AbreConexao();
            if($conexao->query($dado) === TRUE)
                return true;
            else
                return false;
        }
    }

?>
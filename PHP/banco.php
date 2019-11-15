<?php

    class Banco{
        public function AbreConexao(){
            return mysqli_connect("localhost","root","vertrigo","swaptool");
        }
        public function queryResult($query){
            $conexao = $this->AbreConexao();
            return $conexao->query($query);
        }
        public function resultToOneArray($dado){
            $array = $dado->fetch_assoc();
            return $array;
        }
        public function resultToArray($dado){
            $array = array();
            while($row = $dado->fetch_assoc()) {
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
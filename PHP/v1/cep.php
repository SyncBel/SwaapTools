<?php

    class CEP{
        $cep;
        CEP($cep){
            $this->cep = $cep;
        }
        public function veriricaCEPJSON(){
            return file_get_contents("viacep.com.br/ws/{$this->cep}/json/");
        }
        public function veriricaCEPXML(){
            return file_get_contents("viacep.com.br/ws/{$this->cep}/xml/");
        }
        public function veriricaCEPPIPED(){
            return file_get_contents("viacep.com.br/ws/{$this->cep}/piped/");
        }
        public function veriricaCEPQUERTY(){
            return file_get_contents("viacep.com.br/ws/{$this->cep}/querty/");
        }
    }

?>
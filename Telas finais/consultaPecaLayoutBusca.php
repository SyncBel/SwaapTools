<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    session_start();
    $banco = new Banco();
    $text = $_GET["text"];
    $conexao = $banco->AbreConexao();
    $result = $conexao->query("SELECT *, 
    C.descricao AS 'TIPO',
    B.descricao AS 'MODELO',
    D.descricao AS 'MARCA'
FROM descricaopeca AS A 
    INNER JOIN modelo AS B ON A.cod_modelo = B.cod_modelo
    INNER JOIN tipo AS C ON A.cod_tipo = C.cod_tipo
    INNER JOIN marca AS D ON B.cod_marca = D.cod_marca
    /*INNER JOIN peca AS E ON A.cod_descricaopeca = E.cod_descricaopeca*/
    WHERE (C.descricao  LIKE '%{$text}%') OR (B.descricao  LIKE '%{$text}%') OR (D.descricao  LIKE '%{$text}%')");
    if($result != null){
        while($row = $result->fetch_assoc()) {
            echo '</div><div class="col-3">
                    <div class="card card-edit">
                    <img src="icones/back_perfil.jpg" class="img-fluid rounded" />
                        <div class="card-body">
                            <output class="titulo-produto card-title" name="cod_peça">'.$row["TIPO"].'</output><br />
                            <output class="descricao-produto" name="marca">Marca: '.$row["MARCA"].'</output><br />
                            <output class="descricao-produto" name="modelo">Modelo: '.$row["MODELO"].'</output><br />
                            <output class="descricao-produto" name="peça">Tipo: '.$row["TIPO"].'</output><br />
                            <img src="icones/top-color.png" class="top-color" />
                            <img src="icones/top-bw.png" class="top-bw" />
                        </div>
                    </div>
                </div>';
        }
    }
?>




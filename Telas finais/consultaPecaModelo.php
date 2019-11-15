<?php
    //Obs: Preciso analisar o front para saber se é necessário alguma alteração
    include_once("banco.php");
    $banco = new Banco();
    $resultado = $banco->resultToArray("SELECT *, 
    C.descricao AS 'TIPO',
    B.descricao AS 'MODELO',
    D.descricao AS 'MARCA'
FROM descricaopeca AS A 
    INNER JOIN modelo AS B ON A.cod_modelo = B.cod_modelo
    INNER JOIN tipo AS C ON A.cod_tipo = C.cod_tipo
    INNER JOIN marca AS D ON B.cod_marca = D.cod_marca
    INNER JOIN peca AS E ON A.cod_descricaopeca = E.cod_descricaopeca");
    if($resultado != null){
        echo json_encode($resultado);
    }
?>


<!-- Content Row -->
<div class="row">
            <div class="col-lg-6 mb-4">
              <!-- Illustrations -->
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Illustrations</h6>
                </div>
                <div class="card-body">
                  <div class="text-center">
                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                  </div>
                  <p>Add some quality, svg illustrations to your project courtesy of <a target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>, a constantly updated collection of beautiful svg images that you can use completely free and without attribution!</p>
                  <a target="_blank" rel="nofollow" href="https://undraw.co/">Browse Illustrations on unDraw &rarr;</a>
                </div>
              </div>
            </div>
          </div>
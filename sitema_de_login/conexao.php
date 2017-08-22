<?php
ini_set("display_errors", "1");
  error_reporting(E_ALL);

	$servidor = "localhost";
	$usuario = "root";
	$senha = " ";

	//Criar a conexao
	$conn = mysqli_connect($servidor, $usuario, $senha);

	if(!$conn){
		die("Falha na conexao: " . mysqli_connect_error());
	}else{
		echo "Conexao realizada com sucesso";
	}

?>
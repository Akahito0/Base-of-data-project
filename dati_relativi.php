<html>
<head>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <meta charset="utf-8">
    <title>Connessione al database</title>
 <style>
body {
  background-color: black;
 font: 14px sans-serif;
}

h1 {
  color: white;
  text-align: center;
}

table, th, td {
 color:white;
    font-size: 20px;
    border: 1px solid white;
}

div {
 background-color:black;
 border: 3px solid blue;
}
</style>
  </head>
  <body>
<?php
$servername = "my_mihaldimo";
$username= "my_mihaldimo";
$password = "";
$dbname="my_mihaldimo";

// Create Connection
$con = new mysqli($servername, $username, $password, $dbname );

//Check Connection
if(!$con)
  {
   die("Connessione fallita!" . $con->connect_error);
  }
   echo "<h1> Connessione avvenuta con successo! </h1> ";
   echo "<br><br>";

 $sql='SELECT N_cliente, N_ordine, Nome_cliente, tipo_sped, quantita, nome_prod FROM Ordine AS o INNER JOIN Acquisto AS a ON o.id = a.N_ordine INNER JOIN Cliente as c ON a.N_cliente = c.id ORDER BY N_cliente';
 $result= $con->query($sql);
 
echo" <div> <table align='center' class='table table-hover table-dark'> <h1>Tabella degli ordini effettuati dai clienti</h1>
<tr> <th>ID cliente</th> <th>Nome cliente</th> <th>N. Ordine</th> <th>Nome Prodotto</th> <th>quantita'</th> <th>Tipo spedizione</th> </tr>";
if ($result->num_rows > 0){
 while($row = $result->fetch_assoc()) {
  echo "<br>",
  "<tr>",
	 "<td>" . $row['N_cliente'] . "</td>",
     "<td>" . $row['Nome_cliente'] . "</td>",
     "<td>" . $row['N_ordine'] . "</td>",
     "<td>" . $row['nome_prod'] . "</td>",
     "<td>" . $row['quantita'] . "</td>",
     "<td>" . $row['tipo_sped'] . "</td>",
     "</tr>",
  //$row['N_cliente'] ." ". $row['Ordine.id'] ." ". $row['Nome_prodotto']  ." ". $row['quantita']  ." ". $row['Tipo_spedizione'];
  "<br>";
  }
}
  echo "</table> </div>";
?>

  </body>
</html>
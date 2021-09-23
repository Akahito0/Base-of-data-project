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
 
 $sql='SELECT * FROM provadb1';
 $result= $con->query($sql);
 
echo" <div> <table align='center' class='table table-hover table-dark'> <h1>Tabella prodotti</h1>
<tr> <th>ID</th> <th>Nome prodotto</th> <th>Produttore</th> <th>Magazzino di referenza</th> <th>quantita'</th> </tr>";
if ($result->num_rows > 0){
 while($row = $result->fetch_assoc()) {
  echo "<br>",
  "<tr>",
     "<td>" . $row['ID'] . "</td>",
     "<td>" . $row['Nome_prodotto'] . "</td>",
  "<td>" . $row['Produttore'] . "</td>",
   "<td>" . $row['Magazzino_ref'] . "</td>",
  "<td>" . $row['quantita'] . "</td>",
     "</tr>",
  //$row['ID'] ." ". $row['Nome_prodotto'] ." ". $row['Produttore']  ." ". $row['Magazzino_ref']  ." ". $row['quantita'];
  "<br>";
  }
}
  echo "</table> </div>";
?>

  </body>
</html>
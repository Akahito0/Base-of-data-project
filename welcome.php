<?php
// inizializza la sessione
session_start();
 
// Controlla se l'utente è gia loggato, se è vero, allora verrà riportato alla pagina di benvenuto
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Homepage!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body
        { font: 14px sans-serif; text-align: center;
        text-align: center;
        background-color: lightblue;} }
    </style>
</head>
<body>
    <h1 class="my-5">Ciao, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Benvenuto nella piattaforma di TechnoProducts!</h1>
    <p>
        <a href="lista_prodotti.php" class="btn btn-warning">Visualizza la lista prodotti</a><br><br>
        <a href="dati_relativi.php" class="btn btn-warning">Dati relativi agli ordini effettuati da utenti registrati</a><br><br>
		<a href="logout.php" class="btn btn-danger ml-3">Esci dal tuo account.</a>
    </p>
</body>
</html>
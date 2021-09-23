<?php
// Inizializzare la sessione
session_start();
 
// Se la sessione e' gia iniziata, riporta l'utente alla pagina di welcome
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: welcome.php");
    exit;
}
 
//includo il file di config per l'sql
require_once "config.php";
 
// definire le variabili e inizializzare in NULL
$username = $password = "";
$username_err = $password_err = $login_err = "";
 
// processione dei dati controllati dal form
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    // controlla se l'username e' stato inserito
    if(empty(trim($_POST["username"]))){
        $username_err = "Please enter username.";
    } else{
        $username = trim($_POST["username"]);
    }
    
    // controlla se la password e' inserita
    if(empty(trim($_POST["password"]))){
        $password_err = "Please enter your password.";
    } else{
        $password = trim($_POST["password"]);
    }
    
    // controllo delle credenziali
    if(empty($username_err) && empty($password_err)){
        // Prepare a select statement
        $sql = "SELECT id, username, password FROM users WHERE username = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            // Associare le variabili all'istruzione preparata come parametro
            mysqli_stmt_bind_param($stmt, "s", $param_username);
            
            // settare i parametri
            $param_username = $username;
            
            // Tentativo di eseguire l'istruzione preparata
            if(mysqli_stmt_execute($stmt)){
                // Memorizza il risultato
                mysqli_stmt_store_result($stmt);
                
                // Controlla se il nome utente esiste, in caso affermativo verifica la password
                if(mysqli_stmt_num_rows($stmt) == 1){                    
                    // Associa le variabili dei risultati
                    mysqli_stmt_bind_result($stmt, $id, $username, $hashed_password);
                    if(mysqli_stmt_fetch($stmt)){
                        if(password_verify($password, $hashed_password)){
                            // se la password è corretta, quindi avvia una nuova sessione
                            session_start();
                            
                            // Memorizza i dati nelle variabili di sessione
                            $_SESSION["loggedin"] = true;
                            $_SESSION["id"] = $id;
                            $_SESSION["username"] = $username;                            
                            
                            // Reindirizza l'utente alla pagina di benvenuto
                            header("location: welcome.php");
                        } else{
                            // La password non è valida, visualizza un messaggio di errore generico
                            $login_err = "Username o password invalida! Riprova.";
                        }
                    }
                } else{
                    // Username non esistente, mostra un errore generico
                    $login_err = "Username o password invalida! Riprova.";
                }
            } else{
                echo "Ops! Qualcosa è andato storto. Per favore riprova più tardi.";
            }

            // Chiudi dichiarazione SQL
            mysqli_stmt_close($stmt);
        }
    }
    
    // Close connection
    mysqli_close($link);
}
?>
 
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif;
        text-align: center;
        background-color: lightblue;}
        
        .wrapper{ width: 360px; padding: 20px;
        margin-left: auto;
    	margin-right: auto;
        margin-top: 200px;}
        
   
    </style>
</head>
<body>
    <div class="wrapper" float="center";>
        <h2>Login</h2>
        <p>Perfavore, inserisci le tue credenziali per accedere alla piattaforma impiegati TechnoProduct.</p>

        <?php 
        if(!empty($login_err)){
            echo '<div class="alert alert-danger">' . $login_err . '</div>';
        }        
        ?>

        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" class="form-control <?php echo (!empty($username_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $username; ?>">
                <span class="invalid-feedback"><?php echo $username_err; ?></span>
            </div>    
            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" class="form-control <?php echo (!empty($password_err)) ? 'is-invalid' : ''; ?>">
                <span class="invalid-feedback"><?php echo $password_err; ?></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Login">
            </div>
            <p>Sei stato assunto e non ti sei registrato ancora? <a href="register.php">Registrati qua!</a>.</p>
        </form>
    </div>
</body>
</html>
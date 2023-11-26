<?php

$fname = $_POST["fname"];
$lname = $_POST["lname"];
$email = $_POST["email"];
$address = $_POST["address"];
$city = $_POST["city"];
$country = $_POST["country"];

print_r($_POST);


// if ( ! $terms) {
//     die("Terms must be accepted");
// }   

// $host = "localhost";
// $dbname = "message_db";
// $username = "root";
// $password = "";
        
// $conn = mysqli_connect(hostname: $host,
//                        username: $username,
//                        password: $password,
//                        database: $dbname);

// echo "Record saved.";
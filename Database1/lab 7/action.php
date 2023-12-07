<?php

$fname = $_POST["first_name"];
$lname = $_POST["last_name"];
$password = $_POST['password'];
$email = $_POST["email"];
$address = $_POST["address"];
$city = $_POST["city"];
$country = $_POST["country"];

$host = "127.0.0.1:3307";
$dbname = "lab8";
$username = "root";
$dbpassword = "";
        
$mysqli = mysqli_connect(hostname: $host,
                         username: $username,
                         password: $dbpassword,
                         database: $dbname);

if (mysqli_connect_errno()) {
    die("Connection error: " . mysqli_connect_error());
}           

$sql = "INSERT INTO registrations (first_name, last_name, password, email, address, city, country) 
        VALUES ('$fname', '$lname', '$password', '$email', '$address', '$city', '$country')";


if (isset($_POST['submit'])) {
    $result = mysqli_query($mysqli, $sql);

    if ($result) {
        echo "Record saved.";
    } else {
        echo "Error at saving: " . mysqli_error($mysqli);
    }
} else {
    echo "Form not submitted.";
}
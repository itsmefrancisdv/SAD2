<?php
    error_reporting(E_ALL ^ E_NOTICE);

    $DBConnect = mysqli_connect("localhost", "root", "")
    or die ("Unable to connect". mysqli_error());

    mysqli_select_db($DBConnect, "dblazerosa2");
?>
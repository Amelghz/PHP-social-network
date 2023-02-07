<?php 

session_start();

if(isset($_SESSION['myesprims_userid']))
{
	$_SESSION['myesprims_userid'] = NULL;
	unset($_SESSION['myesprims_userid']);

}

header("Location:" . ROOT ."login");
die;

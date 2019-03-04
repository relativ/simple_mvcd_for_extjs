<?php 

	include_once 'application/app.php';
	try{
		
		Application::run();
		
	}catch (Exception $e){				
		Logger::log($e);
		echo "Error occurred, take a look at error log file!";
	}
	
?>
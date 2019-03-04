<?php 
	class Logger {
		public static function log($e){
			$err = 	"File : " . $e->getFile() . "\n".
					"Code : " . $e->getCode() . "\n".
					"Line : " . $e->getLine() . "\n".
					"Message : ". $e->getMessage() . "\n\n".
					"Trace : ".$e->getTraceAsString() ."\n".
					"------------------------------------------------------------------------------------";
			$file = dirname(__FILE__) . "/../../" . Application::config("PATHS")["ERRORLOG"] . "/error_".date("m_Y").".log";
			file_put_contents($file, $err, FILE_APPEND | LOCK_EX);
		}		
	}
?>
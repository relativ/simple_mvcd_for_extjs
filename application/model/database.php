<?php 
	class Database extends PDO {
		protected $connection = null;
		protected $engine = "";
		protected $user = "";
		protected $pass = "";
		protected $host = "";
		protected $db_name = ""; 
		
		function __construct(){
				$dbconfig = Application::config("DB");
				$this->user = $dbconfig["username"];
				$this->pass = $dbconfig["password"];
				$this->host = $dbconfig["host"];
				$this->db_name = $dbconfig["db_name"];
				$this->engine = $dbconfig["db_engine"];
				
				$dns = $this->engine.':dbname='.$this->db_name.";host=".$this->host;
				parent::__construct( $dns, $this->user, $this->pass );
		}
		
	}
?>
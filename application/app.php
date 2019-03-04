<?php 
	include_once 'lib/loader.php';

	class Application {
		public static $instance = null;
		private static $DB = null;
		private static $CONFIG = NULL;
		public static $controls = array();
		
		function __construct() {
			global $_APPCONFIG;
			header('Content-Type: text/html; charset=utf-8');
			self::$CONFIG = $_APPCONFIG;
			Request::init();
			self::$DB = new Database();
		}
		
		function __destruct() {
				
		}
		
		public static function db(){
			return Application::$DB;
		}
		
		public static function config($name){
			return self::$CONFIG[$name];
		}
		
		
		
		public function init(){
			$layer = Request::get("layer");
			$controller = Request::get("controller");
			$controller = (isset($controller) && $controller != "")?$controller: "index";
			
			$filePath = ($layer == "data")? 
								"/application/data/".$controller."_Data.php" : 
									"/application/controller/".$controller."_Controller.php";
			
			$controllerFile =  $filePath;
			$fullPath = dirname(__FILE__) . "/../". $controllerFile;
			if (file_exists($fullPath)){
				include $controllerFile;
				$classname =  $controller. (($layer == "data")?"_Data":"_Controller");
				$controller = new $classname();
				echo $controller->render();
				
				foreach (self::$controls as $key => $val){
					$val->sessionEnd();
				}
			} else {
				throw new Exception("The controller does not exist! May you did not create a controller named as '". Request::get("controller")."'");
			}
		}
		
		public static function run(){

			Application::$instance = new Application();
			Application::$instance->init();
		}
		
	}
?>
<?php 
	class Request {
		protected static $getRequests = array();
		protected static $postRequests = array();
		public static function init(){
			foreach ($_GET as $key => $value){
				if (Security::checkRequest($value)){
					Request::$getRequests[$key] = $value;
				}
			}
			
			foreach ($_POST as $key => $value){
				if (Security::checkRequest($value)){
					Request::$postRequests[$key] = $value;
				}
			}
			$_GET = array();
			$_POST = array();
		} 
		
		public static function get($name){
			if (array_key_exists($name, Request::$getRequests))
				return Request::$getRequests[$name];
			else 
				return null;
		}
		
		public static function post($name){
			if (array_key_exists($name, Request::$postRequests))
				return Request::$postRequests[$name];
			else 
				return null;
		}

		public static function session($name, $value){
			if (isset($value)){
				$_SESSION[$name] = $value;
			} else {
				if (array_key_exists($name, $_SESSION))
					return $_SESSION[$name];
				else 
					return null; 
			}
		}
		
		public static function cookie($name, $value, $time){
			if (isset($value)){
				setcookie($name, $value, time()+$time);
			} else {
				if (array_key_exists($name, $_COOKIE))
					return $_COOKIE[$name];
				else
					return null;
			}
		}
	}

?>
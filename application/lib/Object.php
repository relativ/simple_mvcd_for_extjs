<?php
	ob_start(); 
	class Object {
		function __construct(){
			Application::$controls[get_class($this)] = &$this;
		}
		
		public function sessionEnd(){
			$this->onSessionEnd();
			
			if (Request::get("requestMode") == "ajaxcallback"){
				$cb = Request::get("cb");
				if (method_exists($this, $cb)){
					ob_clean();
					call_user_func(array($this, $cb));
				}
			}
		}
		
		public function onSessionEnd(){
			// session sonlandığında bu event tetiklenir.	
		}
	}
?>
<?php 
	class Controller extends Object implements IController{
		
		function __construct() {
			parent::__construct();
			$this->init();
			
		}
		
		function __destruct() {
			
		}
		
		public function init(){
			
			//will be filled in who extend from this object
		}
		
		public function model(){
			if (!property_exists($this, "varModel")){
				$class = get_class($this);
				$class = str_replace("_Controller", "", $class);
				$class .= "_Model"; 
				include_once '/application/model/'.$class.'.php';
				$this->varModel = new $class();
				$this->varModel->Controller = &$this;
			}
			return $this->varModel;
		}
		
		public function render(){
			return $this->model()->render();
		}
	}
?>
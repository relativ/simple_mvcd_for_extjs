<?php 
	class Model extends Object_ implements IModel{
		
		function __construct() {
			parent::__construct();
			
			$this->init();
		}
		
		public function init(){
			
			//will be filled in who extend from this object
		}
		
		public function render(){
			
		}
		
	}
?>
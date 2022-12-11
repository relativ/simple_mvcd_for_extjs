<?php 
	header('Content-Type: application/json; charset=utf-8');
	class Data extends Object_ implements IData{
		private $output = "";
		
		function __construct(){
			parent::__construct();
			$this->init();	
		}
		
		public function init(){
			
		}
		
		public function write($str){
			$this->output .= $str;
		}
		
		public function clearOutput(){
			 $this->output = "";
		}
		
		public function render(){
			return $this->output;
		}
		
	}
?>
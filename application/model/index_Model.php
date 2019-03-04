<?php 
	class index_Model extends Page {
		
		public function init(){
			
			$str = Request::get("json");
			if (isset($str)){
				$this->readFromJson($str);
			}
			
		
		}
		
		
	}
?>
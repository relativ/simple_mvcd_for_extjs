<?php 
	class satisraporu_Model extends ListPage {
		public function beforeInit(){
			parent::beforeInit();
			
		}
		
		public function init(){
			parent::init();
			//$this->benimInit();
			
			$this->benimListPageInit();
			
		}
		
		public function benimListPageInit(){
			$this->addStandartColumn("Adı", "firstName");
			$this->addStandartColumn("Soyadı", "lastName");
			$this->addStandartColumn("ID NUMARASI", "dataId", true);
			
		}
		
		
		

	}
?>
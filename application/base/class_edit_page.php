<?php 
	class EditPage extends Page {
		 
		
		function createLayout(){
			parent::createLayout();
			$this->createStandartButtons();
		}
		private function createStandartButtons(){

			$this->createSubmitButton("Kaydet");
			$this->createResetButton("Vazgeç");
			$this->createButton("Kapat", new ExtFunction("function(){ alert('kapandı'); }"));
		}
	}
?>
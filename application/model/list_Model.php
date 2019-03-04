<?php 
	class list_Model extends ListPage {
		
		public function beforeInit(){
			parent::beforeInit();
			$this->showHeaderPanel = true;
			
		}
		
		public function init(){
			$this->addStandartColumn("dataID", "dataId", true);
			$this->addStandartColumn("Adı", "firstName");
			$this->addStandartColumn("Soyadı", "lastName");
			$btn = $this->createButton("Kapat", new ExtAjaxFunction(array(), array(), $this->Controller->button_click));
			$btn->id = "denemebtn";
			$evnt = new Ext(null, array(
						"itemdblclick"=> new ExtAjaxFunction(array(
											"grid"=>false,"record"=>false, "item"=>false, "index"=>true, "e"=>false
									), array("records"=>"record.data"), $this->Controller->row_dblclick)
					
			));
			

			
			$this->setGridConfiguration(array(
					"listeners"=>$evnt
			));
		}
		
		
		
		
	}
?>
<?php 
	class ListPage extends Page {
		private $ListPageHeader;
		private $ListPageBody;
		public $grid;
		private $gridDataStore;
		protected $headerHeight = 100;
		protected $gridDataSizePerpage = 100;
		protected $showHeaderPanel = true;
		
	

		public function createLayout(){
			parent::createLayout();
			$this->ExtMainContainer->layout= new Ext(null, array("type"=>"vbox", "align"=>"stretch", "padding"=>0));
			
			if ($this->showHeaderPanel){
				$this->ListPageHeader = new Ext("Ext.panel.Panel");
				$this->ListPageHeader->layout = new Ext(null, array("type"=>"vbox", "align"=>"stretch", "padding"=>0));
				$this->ListPageHeader->items = array();
				$this->ListPageHeader->height = $this->headerHeight;
	
				$this->addPageElement($this->ListPageHeader);
				
				$this->addPageElement(new Ext(null, array("xtype"=>"splitter")));
			}
			
			$this->ListPageBody = new Ext("Ext.panel.Panel");
			$this->ListPageBody->layout = new Ext(null, array("type"=>"vbox", "align"=>"stretch", "padding"=>0));
			$this->ListPageBody->items = array();
			$this->ListPageBody->layout = "fit";
			$this->ListPageBody->id = $this->PageID . "_Body_Panel";
			
			$heightDecrease = ($this->showHeaderPanel)?$this->headerHeight + 45 : 45;
			
			$this->ListPageBody->height = new ExtFunction("document.body.offsetHeight - " . $heightDecrease);

			$this->addPageElement($this->ListPageBody);
			
			//$this->addTopElement($this->ListPageBody->id, $this->ListPageBody);
			
			$this->gridDataStore = new Ext("Ext.data.Store");
			$this->gridDataStore->storeId = $this->PageID . "_Grid_Store";
			$this->gridDataStore->fields = array();
			$this->gridDataStore->autoLoad = true;
			$this->gridDataStore->buffered=false;
			$this->gridDataStore->pageSize= $this->gridDataSizePerpage;
			$this->gridDataStore->proxy = new Ext(null, array(
					"type"=>"ajax",
					"url"=> $this->getDataURL("&requestFrom=".$this->gridDataStore->storeId),
					"reader" => new Ext(null, array("type"=>"json", "root"=>"data", "totalProperty"=>"total"))
			));
			
			$this->grid = new Ext("Ext.grid.Panel");
			$this->grid->id = $this->PageID."_Standart_Grid";
			$this->grid->columns = array();
			$this->grid->renderToContainer = "Ext.getCmp('". $this->ListPageBody->id . "').body";
			$this->grid->height = new ExtFunction("Ext.getCmp('". $this->ListPageBody->id . "').body.dom.offsetHeight");
			$this->grid->layout = "fit";
			$this->grid->dockedItems = new Ext(null, array(
					"xtype" => 'pagingtoolbar',
					"height" => 28,
					"displayInfo" => false,
					"store"=>  new ExtVariable($this->gridDataStore->id),
					"dock" => 'bottom'
			));
			
			$this->grid->forceFit=true;
			
			$this->grid->store = new ExtVariable($this->gridDataStore->id);
			
			$this->addTopElement($this->gridDataStore->id, $this->gridDataStore);
			
			$this->addTopElement($this->grid->id, $this->grid);
			
			
			
			
			$this->ListPageBody->listeners = new Ext(null, array(
				"resize" => new Ext(null, array(
						"fn"=>new ExtFunction("function(el) {
									var grid = Ext.getCmp('".$this->grid->id."');
									if (typeof grid != 'undefined'){
										grid.setHeight(el.height);
									}
								}")
				))
			));
			
		}
		
		public function addElementToHeader($el){
			if (!is_array($this->ListPageHeader->items))
				$this->ListPageHeader->items = array();
			$count = count($this->ListPageHeader->items);
			$this->ListPageHeader->items[$count] = $el;
		}
		
		/*
		 * setGridConfiguration - standart liste formlarında var olan grid öğesine 
		 * ekstra propertyler eklenmek isteniyorsa bu fonksiyon kullanılır. 
		 * ÖR: 
		 * 		setGridConfiguration(array("width"=>200, "autoLoad"=> false));
		 * 		şeklinde bir ayarlama grid'in width property'sini 200px ve autoLoad property'sini false olarak işaretler
		 * 
		 */
		public function setGridConfiguration($config = array()){
			foreach ($config as $key=>$value){
				$this->grid->$key = $value;
			}
		}
		
		public function addListenerToGrid($listener, $function){
			
		}
		
		/* 
		 *  addColumn - standart list formlarında var olan grid nesnesine kolon ekler!
		 *  Uyulması gereken kurallar; $title ve $dataIndex kesinlikle dolu olmalıdır!
		 *  $title : Kolonun ekranda görüntülenecek adıdır!
		 *  $dataIndex : Kolonun json içindeki veriden alacağı değerin adını ifade eder.
		 *  $xtype: colonda bir datetimepicker gösterilecekse veya özel bir control görüntülenecekse o kontrolün extjs tipinin girilmesi gerekli
		 *  $dataType: JSON'dan gelen değerin tipi numeric, alphanumeric, tarih etc..
		 *  $format: gösterilecek değerin ekranda hangi formatta görüntüleneceğini ayarlar ÖR: dd.mm.YY gibi
		 *  $tpl: bu kolon için özel bir template tanımlamak istersek onun kodunu gireceğimiz alandır 
		 *  */
		public function addStandartColumn($title, $dataIndex, $hidden=false, $xtype="", $dataType="string", $format="", $tpl=""){
			
			$column = new Ext(null, array(
					"text" => $title, 
					"dataIndex"=> $dataIndex, 
					"xtype"=> $xtype,
					"tpl"=>$tpl,
					"format"=>$format,
					"dataType"=>$dataType,
					"hiddenField"=>$hidden
			));
			
			$this->addColumn($column);
		}
		
		public function addColumn($object){
			if (!$object->dataIndex || !$object->dataType){
				throw new Exception("Grid header columns must have 'dataIndex' and 'dataType' properties. Please check back your code! ");
			}
			
			if (!$object->hiddenField){
				if (!is_array($this->grid->columns)){
					$this->grid->columns = array();
				}
				
				$count = count($this->grid->columns);
				$this->grid->columns[$count] = $object;
			}
	
			if (!is_array($this->gridDataStore->fields)){
				$this->gridDataStore->fields = array();
			} 
			
			$count = count($this->gridDataStore->fields);
			$this->gridDataStore->fields[$count] = new Ext(null, array("name"=>$object->dataIndex, "type"=>$object->dataType)); 
		}
	}
?>
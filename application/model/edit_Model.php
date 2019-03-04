<?php 
	class edit_Model extends EditPage {
		
		public function init(){
			$el = new Ext();
			$el->fieldLabel= "ad soyad:";
			$el->name = "isim";
			$el->id = "isim";
			$el->allowBlank=false;
			$el->width = "280px";
			$el->height="27px";
			$el->xtype = "textfield";
			$this->addPageElement($el);

			$el2 = new Ext("Ext.Button");
			$el2->text = "deneme";
			$el2->handler = new ExtFunction("function(){alert('butona tıklandı');}");
			$el2->x = "200";
			$el2->y = "250";
			
			$this->addPageElement($el2);
			
						
			$el = new Ext("Ext.window.Window");
			$el->title = "Deneme";
			$el->height = 200;
			$el->width = 400;
			$el->layout="fit";
			$el->frame = true;
			$el->closeAction = "hide";
			$el->items = array(new Ext(null, array(
					"xtype"=>"grid",
					"border"=>false,
					"columns"=> array(
							new Ext(null, array("header"=>"World"))
					),
					"store"=> new Ext("Ext.data.ArrayStore"))
			));
			
			$el->show();
			
			$el->setPosition(0, 20, true);

			
			$this->addTopElement("extWindow", $el);
		}

	}
?>
<?php 

	class list_Controller extends Controller {
		
		public function init(){
			
		}
		
		public function button_click($args=array(), $returns = array()){
			$model = $this->model();
			echo "Ext.getCmp('denemebtn').setText('naber loo');";
		}
		
		public function row_dblclick(){
			$model = $this->model();
			$aaa = Request::post("records");
			$index = Request::post("index");
			$obj = json_decode($aaa, true);
			if ($obj["firstName"] == "Ed"){
				echo $model->grid->id.".getStore().removeAt($index);";
				echo "alert('".$obj["firstName"]." bu ismi tutmadım sildim' );";
			} else {
				echo "alert('".$obj["firstName"]." güzel isim, sıkıntı yok' );";
			}
		}
		
	}
?>
<?php 

	class satisraporu_Controller extends Controller {

		public function init(){
			
		}
		
		public function edit_degeri(){
			$newV = Request::post("newVal");
			$oldV = Request::post("oldVal");
			$extra = Request::post("extrabu");
			$disable = ($newV == "ab")?"true":"false";
			echo "alert('serverdan: ".$extra."');editkutusu.setDisabled($disable);";
		}
		
	}
?>
<?php 

	class Page extends Model{
		public $Controller;
		private $title = "";
		private  $header = array();
		private  $body = array();
		private $file = "";
		
 		
		public $ExtMainContainer = null;
		
		protected $Elements = array();
		
		private $pageElements = array();
		
		public $PageID = "";
		
		public $ModelName = "";
		
		function __construct($html=""){
			$file = (!$html)?"page.html":$html .".html";
			$this->file = dirname(__FILE__). "/../view/".$file;
			$this->ModelName = str_replace("_Model", "", get_class($this));
			$this->beforeInit();
			$this->initMainComponents();
			parent::__construct();
			
			
		}
		
		
		private function initMainComponents(){
			$this->ExtMainContainer = new Ext("Ext.form.Panel");
			$this->ExtMainContainer->id = "ExtApplication";
			$this->ExtMainContainer->collapsible = false;
			$this->ExtMainContainer->url = $this->getDataURL("&requestFrom=".$this->ExtMainContainer->id);
			$this->ExtMainContainer->frame = true;
			$this->ExtMainContainer->border= false;
			$this->ExtMainContainer->bodyBorder= false;
			$this->ExtMainContainer->layout= "absolute";
			$this->ExtMainContainer->width = "100%";
			$this->ExtMainContainer->height = "100%";
			$this->ExtMainContainer->items = array();
			$this->ExtMainContainer->buttons = array();
			$this->ExtMainContainer->renderToContainer = "document.body";
			$this->addTopElement("ExtApplication", $this->ExtMainContainer);
			$this->createLayout();
			
		}
		
		public function beforeInit(){
			//will be filled in who extend from this object
		}
		
		public function createLayout(){
			//will be filled in who extend from this object
		}
		public function init(){
			//will be filled in who extend from this object
		}
		
		protected function readFromJson($json){
			$obj = json_decode($json, true);
			foreach ($obj as $key => $value){
				if (!is_array($value)){
					$value = (!isset($value))?"":$value;
					$this->ExtMainContainer->$key = $value;
				} else {
					for ($i=0; $i < count($value); $i++){
						$this->createSub($this->ExtMainContainer->items, $value[$i]);
					}
				}
			}
		}
		
		public function __call($name, $arguments){
			
		}
		
		public static function __callStatic($name, $arguments){
				
		}
		
		private function createSub(&$parent, &$obj){
			$el = new Ext(null);
			foreach ($obj as $key => $value){
				if (!is_array($value)){
					$value = (!isset($value))?"":$value;
					$el->$key = $value;
				} else {
					$el->$key = array();
					for ($i=0; $i < count($value); $i++){
						$this->createSub($el->items, $value[$i]);
					}
				}
			}
			$parent[count($parent)] = &$el;
			if (property_exists($el, "name"))
				$this->Elements[$el->name] = &$el;
		}
		
		public function setTitle($title){
			$this->title = $title;
		}
		
		public function addPageElement(&$el){
			$count = count($this->ExtMainContainer->items);
			$this->ExtMainContainer->items[$count] = $el;
		}
		
		public function addTopElement($name, &$el){
			$this->pageElements[$name] = $el;
		}
		
		public function AddButton($el){
			$count = count($this->ExtMainContainer->buttons);
			$this->ExtMainContainer->buttons[$count] = $el;
		}
		
		public function createButton($caption, $event){
			$el = new Ext("Ext.Button");
			$el->text = $caption;
			$el->handler = $event;
			$this->AddButton($el);
			return $el;
		}
		public function createResetButton($caption){
			
			return $this->createButton($caption, new ExtFunction("function() {
					this.up('form').getForm().reset();
			}"));
		}
		public function createSubmitButton($caption, $success="", $failure=""){
			
			$el = $this->createButton($caption, new ExtFunction("function() {
					var form = this.up('form').getForm();
			            if (form.isValid()) {
			                form.submit({
			                    success: function(form, action) {
			                       $success
			                    },
			                    failure: function(form, action) {
			                       $failure
			                    }
			                });
			            }
			}"));
			
			$el->formBind = true;
			$el->disabled=true;
			
			return $el;
		}
		
		public function addScript($src){
			$script = "<script src='$src' type='text/javascript'></script>";
			$count = count($this->header);
			$this->header[$count] = $script;

		}
		
		public function addInlineScriptToBody($script){
			$scr = "<script type='text/javascript'>$script</script>";
			$count = count($this->body);
			$this->body[$count] = $scr;
		}
		
		public function addInlineScriptToHead($script){
			$scr = "<script type='text/javascript'>$script</script>";
			$count = count($this->header);
			$this->header[$count] = $scr;
		}
		
		public function addCss($src){
			$scr = "<link rel='stylesheet' type='text/css' href='$src' />";
			$count = count($this->header);
			$this->header[$count] = $scr;
		}
		
		public function addInlineStyle($style){
			$scr = "<style type='text/css'>$style</style>";
			$count = count($this->header);
			$this->header[$count] = $scr;
		}
		
		public function getDataURL($additionalQuery){
			$additional = ($additionalQuery[0] == "&")? $additionalQuery: "&".$additionalQuery;
			return Application::config("ACTIONS")["DATALAYER"] . "&controller=".$this->ModelName. $additional; 
		}
		
		
		public function render(){
			$extPage = "";
			$extGlobalNames = "";
			foreach ($this->pageElements as $name => $value){
				$extGlobalNames .= "var $name;\n";
				$extPage .= $value->render($name) ."\n";
			}
			
			$this->addInlineScriptToHead("
					$extGlobalNames
					Ext.onReady(function(){
						$extPage
					});");
			$content 	= file_get_contents($this->file);
			$header  	= implode("\n", $this->header);
			$body		= implode("\n", $this->body);
			$content 	= str_replace("<!-- {HEADER} -->", $header, $content);
			$content 	= str_replace("<!-- {BODY} -->", $body, $content);
			$content 	= str_replace("<!-- {TITLE} -->", $this->title, $content);
			
			
			echo $content;
		}
	}
?>
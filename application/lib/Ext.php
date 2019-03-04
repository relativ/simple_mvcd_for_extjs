<?php
/*
 * ExtJS PHP API 1.0
 * Written by Serkan Güneş
 * 
 */

class ExtVariable {
	public $Variable = "";
	function __construct($variable){
		$this->Variable = $variable;
	}
}

class ExtFunction {
	public $JavaScript = "";
	function __construct($function){
		$this->JavaScript = $function;
	}
	public function render(){
		return $this->JavaScript;
	}
}

class ExtAjaxFunction{
	private $eArgs = array();
	private $rParams = array();
	private $cb = "";
	public $listener = "";
	function __construct($eventArgs=array(), $requestParams = array(), &$callback){
		$this->eArgs = $eventArgs;
		$this->rParams = $requestParams;
		$this->cb = $callback;
				
	}
	public function render($id){
		$url = full_url();
		$additionalRequests = "";
		foreach ($this->rParams as $key=>$val){
			$additionalRequests .= "req.params.$key=$val";
		}
		/*$cb = serialize($callback);
		 echo "callback : $cb"; */
		$url .= "&requestMode=ajaxcallback&element=".$id."&cb=".$this->listener;
		$args = "";
		$params = "";
		foreach ($this->eArgs as $key=>$val){
			if ($val){
				$params .= "'$key': $key,";
			}
			$args .="$key,";
		}
		$params = rtrim($params, ",");
		$args = rtrim($args, ",");
		$JavaScript ="function(".$args."){
			var req = {
				url: '$url',
				method: 'POST',
				params: {
					$params
				},
				success: function(response){
					eval(response.responseText);
				}
			};
			$additionalRequests
			for (var p in req.params){
				if (typeof req.params[p] == 'object'){
					req.params[p] = JSON.stringify(req.params[p]);
				}
			}
			Ext.Ajax.request(req);
		}";
		return $JavaScript;
	} 
}

class Ext {
  protected static $ExtIDList = array();
  protected static $indent = '';
  protected $state = Array();
  protected $calls = array();
  private $extClass = '';
  public $definerId = '';
  
  public $renderToContainer = '';
  
  public function __construct($ExtClass = null, $properties = null) {
    $this->extClass = $ExtClass;
    if (is_array($properties)) {
      foreach ($properties as $key=>$val){
      	$this->$key = $val;
      }      
    }
    $c = count(self::$ExtIDList);
    $this->definerId = "ExtJSObject_". $c;
    self::$ExtIDList[$c] = $this->definerId;
    
    if ($ExtClass || ($properties && array_key_exists("xtype", $properties))){
    	$this->id = $this->definerId;
    }
    
  }
  
  public function &__call($name, $arguments)
  {
  	if( !empty($name) ){

  		$args = "";
  		foreach ($arguments as $val){
  			if (is_array($val) || is_object($val)){
  				if (is_object($val) && get_class($val) == "ExtVariable"){
  					$args .= $val->Variable . ",";
  				} else {
  					$args .= json_encode($val) .",";
  				}
  			} elseif(is_string($val)) {
				$args .= "'$val',";
	  		} elseif (is_bool($val)) {
	  			$args .= ($val) ? "true": "false";
	  			$args .= ",";
	  		} else {
	  			$args .= "$val,";
	  		}
  		}
  		
  		$args = rtrim($args, ",");

  		$this->calls[count($this->calls)] = "$name($args);";
  	}
  	$f = true;
  	return $f;
  }
  
  public function &__set($key, $val) {
  	
  	if( !empty($key) && $key != "definerId" ){
	    if ($key=='indent') {
	      $indent = $val;
	    } else {
	    	if( is_object( $val ) || is_array( $val) ){
	    		if (is_object( $val ) && get_class($val) == "ExtAjaxFunction"){
	    			$val->listener = $key;
	    			echo "geldii $key\n";
	    		}
	    		$this->state[$key] = & $val;
	    	} else {
	    		$this->state[$key] = & $val;
	    	}
	    }
  	}
  	$f = false;
  	return $f;
  }

  public function &__get($key) {
    if ($key != "definerId"){
    	return $this->state[$key];
    }
  }
  
  public function __isset($key) {
    return isset($this->state[$key]);
  }
  
  public function __unset($key) {
    unset($this->state[$key]);
  }
  
  public function SetProperties($properties) {
    $this->state = array_merge($this->state, $properties);
  }
  
  public function JSRender($items, $showkeys = true) {
    self::$indent .= '  ';
    $str = '';
    $total = count($items);
    $cnt = 1;
    foreach ($items as $element => $value) {
      if ($showkeys) {
		$str .= self::$indent."$element: ";
	  }
	  if(is_string($value)) {
		$str .= "'$value'";
	  } else if (is_bool($value)) {
		$str .= ($value) ? "true": "false";
	  } else if (is_object($value)) {
	  	if (get_class($value) == "ExtFunction" || get_class($value) == "ExtAjaxFunction"){
	    	$str .= $value->render($this->definerId);
	    } elseif (get_class($value) == "ExtVariable"){
	    	$str .= $value->Variable;
	    } else {
			if (method_exists($value, 'render')) {
				$str .= $value->render(null);
			} 
	    }
	  } else if (is_array($value)) {
		$str .= "[\n";
		$str .= $this->JSRender($value, false);
		$str .= self::$indent."]";
	  } else {
		$str .= $value;
	  }
	  if ($cnt == $total) {
		$str .= "\n";
	  } else {
		$str .= ",\n";
	  }
	  $cnt++;
    }
    self::$indent = substr(self::$indent, 0, -2);
    return $str;
  }
  
  public function render($name = null) {
    $str = '';
    if ($name) {
      $str = self::$indent . "$name = new $this->extClass({\n";
    } else if ($this->extClass) {
      $str = self::$indent . "new $this->extClass({\n";
    } else {
      $str = self::$indent . "{\n";
    }
    
    $str .= $this->JSRender($this->state, true);
    $str .= self::$indent . "}";
    if($this->extClass) {
      $str .= ")";
    }
    if ($name) {
      $str .= ";\n";
    }
    
    if (!empty($this->renderToContainer)){
    	$str .= "$name.render(".$this->renderToContainer.");";
    }
    for ($i=0;$i < count($this->calls); $i++){
    	$str .= "$name.".$this->calls[$i]."\n";
    }
    return $str;
  }
}
?>
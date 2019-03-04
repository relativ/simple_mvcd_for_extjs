<?php 
	class list_Data extends Data{
		public function init(){
			parent::init();
			$this->createData();
		}
		
		public function createData(){
			$str = "{total: 300,
data:[
	{dataId:'15',firstName: 'Ed',    lastName: 'Spencer'},{dataId:'15',firstName: 'Tommy', lastName: 'Maintz'},{dataId:'15',firstName: 'Aaron', lastName: 'Conran'},{dataId:'15',firstName: 'Jamie', lastName: 'Avins'},
	{dataId:'15',firstName: 'Ed',    lastName: 'Spencer'},{dataId:'15',firstName: 'Tommy', lastName: 'Maintz'},{dataId:'15',firstName: 'Aaron', lastName: 'Conran'},{dataId:'15',firstName: 'Jamie', lastName: 'Avins'},
	{dataId:'15',firstName: 'Ed',    lastName: 'Spencer'},{dataId:'15',firstName: 'Tommy', lastName: 'Maintz'},{dataId:'15',firstName: 'Aaron', lastName: 'Conran'},{dataId:'15',firstName: 'Jamie', lastName: 'Avins'},
	{dataId:'15',firstName: 'Ed',    lastName: 'Spencer'},{dataId:'15',firstName: 'Tommy', lastName: 'Maintz'},{dataId:'15',firstName: 'Aaron', lastName: 'Conran'},{dataId:'15',firstName: 'Jamie', lastName: 'Avins'},
	{dataId:'15',firstName: 'Ed',    lastName: 'Spencer'},{dataId:'15',firstName: 'Tommy', lastName: 'Maintz'},{dataId:'15',firstName: 'Aaron', lastName: 'Conran'},{dataId:'15',firstName: 'Jamie', lastName: 'Avins'},
	{dataId:'15',firstName: 'Ed',    lastName: 'Spencer'},{dataId:'15',firstName: 'Tommy', lastName: 'Maintz'},{dataId:'15',firstName: 'Aaron', lastName: 'Conran'},{dataId:'15',firstName: 'Jamie', lastName: 'Avins'},
	{dataId:'15',firstName: 'Ed',    lastName: 'Spencer'},{dataId:'15',firstName: 'Tommy', lastName: 'Maintz'},{dataId:'15',firstName: 'Aaron', lastName: 'Conran'},{dataId:'15',firstName: 'Jamie', lastName: 'Avins'},
	{dataId:'15',firstName: 'Ed',    lastName: 'Spencer'},{dataId:'15',firstName: 'Tommy', lastName: 'Maintz'},{dataId:'15',firstName: 'Aaron', lastName: 'Conran'},{dataId:'15',firstName: 'Jamie', lastName: 'Avins'},
	{dataId:'15',firstName: 'Ed',    lastName: 'Spencer'},{dataId:'15',firstName: 'Tommy', lastName: 'Maintz'},{dataId:'15',firstName: 'Aaron', lastName: 'Conran'},{dataId:'15',firstName: 'Jamie', lastName: 'Avins'},
	{dataId:'15',firstName: 'Ed',    lastName: 'Spencer'},{dataId:'15',firstName: 'Tommy', lastName: 'Maintz'},{dataId:'15',firstName: 'Aaron', lastName: 'Conran'},{dataId:'15',firstName: 'Jamie', lastName: 'Avins'},
	{dataId:'15',firstName: 'serkan', lastName: 'güneş'}
]
}";
			$this->write($str);
		}
		
	}
?>
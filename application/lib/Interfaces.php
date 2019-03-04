<?php

interface IController
{
	public function init();
	public function model();
    public function render();
}


interface IModel {
	public function init();
	public function render();
}

interface IData {
	public function init();
	public function render();
}


?>
<?php

class ConnectionInfo
{
	public $mServerName;
	public $mConnectionInfo;
	public $conn;
	
	public function GetConnection()
	{
		$this->mServerName = 'localhost';
		$this->mConnectionInfo = array("Database"=>"YOUR_DATABASE", "UID"=>"YOUR_USERNAME", "PWD"=>"YOUR_PASSWORD");
		$this->conn = sqlsrv_connect($this->mServerName,$this->mConnectionInfo);
		
		return $this->conn;
	}
}
?>
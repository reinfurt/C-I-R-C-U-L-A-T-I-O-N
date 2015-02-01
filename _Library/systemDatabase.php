<?php




  ////////////////
 //  Database  //
////////////////

function systemDatabase() {

	$dbMainHost = "db152d.pair.com";
	$dbMainUser = "reinfurt_39";
	$dbMainPass = "Q4UZtkW7";
	$dbMainDbse = "reinfurt_circulation";

	$dbConnect = MYSQL_CONNECT($dbMainHost, $dbMainUser, $dbMainPass);
	MYSQL_SELECT_DB($dbMainDbse, $dbConnect);
}
systemDatabase();









?>

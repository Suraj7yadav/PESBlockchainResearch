<!DOCTYPE html>
<html>
<head>
	<title>Results</title>
</head>
<style type="text/css">
	body{
		background: url('server.jpg');
		background-size: cover;
		color: white;
		font-size: 1.25em;
	}
</style>
<body>

</body>
</html>
<?php

date_default_timezone_set('UTC');
define('_magic', 0xD5E8A97F);
define('_hashalg', 'sha256');
define('_hashlen', 32);

define('_fn', '../blockchain/blockchain.dat');

if (!file_exists(_fn)) exit("Can't open "._fn);
$size = filesize(_fn);
$fp = fopen(_fn,'rb');

$height = 0;
print "<br>The results of the domain are: <br>";
$search_string = $_GET['searchName'];
$domainData = '';
$flag=0;
while (ftell($fp) < $size) {

	$header = fread($fp, (13+_hashlen));

	$magic = unpack32($header,0);
	$version = ord($header[4]);
	$timestamp = unpack32($header,5);
	$prevhash = bin2hex(substr($header,9,_hashlen));
	$datalen = unpack32($header,-4);
	$data = fread($fp, $datalen);
	$hash = hash(_hashalg, $header.$data);

	if(strpos($data,$search_string)!==false){
		if(strpos($data,'Revoke')!==false){
			$flag=1;
			$domainData = '';
		}
		else
			$domainData = $domainData.$data;
	}
}
if($flag == 1 && $domainData == '')
	print "<br>Sorry! The domain ".$search_string." contains no records.<br>";
else
	print "<br><pre>".$domainData."</pre>";
fclose($fp);

function unpack32($data,$ofs) {
	return unpack('V', substr($data,$ofs,4))[1];
}

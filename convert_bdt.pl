#!/usr/bin/perl

# update BDT scores ....
open(infile,"filelist_bdt");
my $num = 0;
while(<infile>){
    $filename = $_;
    chomp($filename);
    @temp = split(/\s+/,$filename);

    if ($temp[0] eq "end") {
	last;
    }
    
    if ($temp[4] == 1){
	if ($num %12 == 11){
	    system("bin/bdt_convert $temp[0]$temp[1]  $temp[2]$temp[1] -l./training_list/list.dat");
	}else{
	    system("bin/bdt_convert $temp[0]$temp[1]  $temp[2]$temp[1] -l./training_list/list.dat &");
	}
    }elsif ($temp[4]==2){
	if ($num %12 == 11){
	    system("bin/bdt_convert $temp[0]$temp[1] $temp[2]$temp[1]  -g$temp[5]  -l./training_list/list.dat");
	}else{
	    system("bin/bdt_convert $temp[0]$temp[1] $temp[2]$temp[1]  -g$temp[5] -l./training_list/list.dat &");
	}
    }else{
	if ($num %12 == 11){
	    system("bin/bdt_convert $temp[0]$temp[1] $temp[2]$temp[1] ");
	}else{
	    system("bin/bdt_convert $temp[0]$temp[1] $temp[2]$temp[1] &");
	}
    }
    
    
    $num++;
}
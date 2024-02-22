#!/usr/bin/perl
open(infile,"./configurations/det_file.txt");

my $num = 0;
while(<infile>){
    $filename = $_;
    chomp($filename);
    @temp = split(/\s+/,$filename);
    if ($temp[0] eq "end"){
	last;
    }
    if ($num % 10 == 9){
	system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/merge_det $filename");
    }else{
	system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/merge_det $filename&");
    }
    $num ++;
}

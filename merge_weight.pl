#!/usr/bin/perl
open(infile,"./configurations/xf_file.txt");

my $num = 0;
    
while(<infile>){
    $filename = $_;
    chomp($filename);
    @temp = split(/\s+/,$filename);
    if ($temp[0] eq 'end') {
	print "end\n";
	last;
    }
    
    if ($num % 17 == 16){
        system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/merge_xf $filename ");
    }else{
	system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/merge_xf $filename &");
    }
    $num ++;
}

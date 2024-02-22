#!/usr/bin/perl

open(infile,"filelist");
while(<infile>){
    my $filename = $_;
    chomp($filename);
    @temp = split(/\s+/, $filename);
    system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/check_failures $temp[1] ");
}

#!/usr/bin/perl

for (my $i=0;$i != 2; $i++){
    my $lee_strength = 0.03 * $i;
    if ($i % 12 == 11){
	system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/merge_hist -r1 -e2 -l$lee_strength > ./mc_stat/$i\.log");
    }else{
	system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/merge_hist -r1 -e2 -l$lee_strength > ./mc_stat/$i\.log &");
    }
    
}

#!/usr/bin/perl

for (my $i=0;$i != 4; $i++){
    my $lee_strength = 1.0 * $i;
    if ($i % 12 == 11){
	system("/bin/uboone/app/users/eyandel/wcp-uboone-bdt/bin/merge_hist -r0 -e2 -l$lee_strength > ./mc_stat/$i\.log");
    }else{
	system("/bin/uboone/app/users/eyandel/wcp-uboone-bdt/bin/merge_hist -r0 -e2 -l$lee_strength > ./mc_stat/$i\.log &");
    }
    
}

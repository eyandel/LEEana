#!/usr/bin/perl
my $num1 = scalar(@ARGV);

for (my $i=1;$i<=10;$i++){
    if ($num1 ==0){
	if ($i==5) {
          print "Skip WireMod dEdx \n";
        }
	else {
	  system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/det_cov_matrix -r$i &");
        }
    }else{
	print "Oscillation! \n"; 
	system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/det_cov_matrix -r$i -o1 &");
    }
}

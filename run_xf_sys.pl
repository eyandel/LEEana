#!/usr/bin/perl
my $num1 = scalar(@ARGV);

for (my $i=1;$i<18;$i++){
    if ($i% 9 == 8){
	if ($num1==0){
	    system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/xf_cov_matrix -r$i ");
	}else{
	    print "Oscillation! \n"; 
	    system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/xf_cov_matrix -r$i -o1");
	}
    }else{
	if ($num1 ==0){
	    system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/xf_cov_matrix -r$i &");
	}else{
	    print "Oscillation! \n"; 
	    system("/exp/uboone/app/users/eyandel/wcp-uboone-bdt/bin/xf_cov_matrix -r$i -o1&");
	}
    }
}

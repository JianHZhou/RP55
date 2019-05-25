#This script is to calcualte the disorder percent for each sequences,
#given the length of disordered residues (second column) and domain(third column) are known
#!/usr/local/bin/perl

open (IN, "206_RP55seg_DisP.txt") or die "cannot open file!";
while (<IN>)
{
	chomp;
	#print $_;
	@line=split(/\t/,$_);
	if($line[7] eq '')
	{
		$disorderPercent=0;
		print "$line[0]\t$line[1]\t$line[2]\t$disorderPercent\n";
	}else{
		$disorderPercent=($line[7]/$line[3])*100;
		$disorderPercent=sprintf"%.1f",$disorderPercent;
		print "$line[0]\t$line[1]\t$line[2]\t$disorderPercent\n";
	}
	
}
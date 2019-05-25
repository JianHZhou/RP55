#This script is to map subset of ids and their information from a big file
#!/usr/bin/perl
use autodie;
@array;
#%hash1;
%hash2;

#First, open the big file with the disorder prediction
open(INFILE1,"vsl2b_206RP55.txt")||die "Cannot find file1.\n";#A0A087VP64      1       I       0.796743
#second, open the file with your targeted regions
open(INFILE2,"sorted_ProResIndex.txt")||die "Cannot find file2.\n";#E2RPF3 436  PF09289 436-457
	while ($line2=<INFILE2>)
	{
		chomp($line2);
		@column=split /\t/,$line2;
		$C2=join("\t",$column[0],$column[1]);;
		#print "$C2\n";
		$hash2{$C2}=$line2;
	}

<INFILE1>;
while($line1=<INFILE1>)
{
	chomp($line1);
	@array=split (/\t/,$line1);
	$C1=join("\t",$array[0],$array[1]);
	if(exists($hash2{$C1})) #and ($C1 eq $C2))
	{
		print "$hash2{$C1}\t$line1\n";
	}else{
		next;
	}
}
close INFILE1;
close INFILE2;

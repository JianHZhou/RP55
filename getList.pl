#!/usr/bin/perl
$path = "/Users/zhoujianhong/Documents/Work/Seeds_DisPred2018/RP55/";
#open (OUT,">"."C:/project3/Ion/monomers/LINK.txt") or die "cann't open2 $!\n";
opendir (DIR,$path) or die "can't open the directory1!\n";
my @file = readdir DIR;


foreach my $file (@file) {
    if($file eq "." or $file eq ".."){next;}
	if($file=~/(.*)\.fasta$/){
		print "https://www.uniprot.org/uniprot/$file\n";
		open(IN,$path.$file) or die "Cannot creat sequence file1.\n";
		#open (OUT,">$1_Seq.txt") or die "Cannot creat sequence file2.\n";
		while(<IN>)
		{
			#@line=split/\t/,$_;
			#print $_;
			#print OUT ">$line[0]/$line[1]/$line[2]\n$line[3]";
		}

	}
}


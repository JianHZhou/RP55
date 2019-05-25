#!/usr/bin/perl

#This perl script is to calculate the average of disorder prediction for each domain

open(IN, "206_RP55_Vsl2b_DP.txt") || die("Could not open file1!\n");
%sum;
%count;
while(<IN>)
{
	chomp;
	@line=split /\t/,$_;
	#$region=join("\t",$line[2],$line[4],$line[3]);
	#$seed=join("/",$line[5],$region);
	#$Pfam=join("\t",$line[4],$seed);
	$sum{$line[0]}+=$line[3];
	$count{$line[0]}+=1;
}
foreach $id(sort keys %count)
{
	$ave=$sum{$id}/$count{$id};
	print "$id\t$ave\n";
	#print "$id\t$sum{$id}\n";
}

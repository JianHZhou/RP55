#this script is to remove redundant sequences (sequenes with the same ids)

from Bio import SeqIO

with open('output.fasta', 'a') as outFile:
	record_ids = list()
	#count=0
	for record in SeqIO.parse('combined_seq.txt', 'fasta'):
		if record.id not in record_ids:
			#count=+1
			record_ids.append( record.id)
			SeqIO.write(record, outFile, 'fasta')
    #print(count)
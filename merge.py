#This script merge all the fasta files in a directory into one fasta file
#outfilename = "RP55_allseq.txt"
import os,shutil
f=open("RP55_allseq.txt","a")
for r,d,fi in os.walk("/Users/zhoujianhong/Documents/Work/Seeds_DisPred2018/RP55"):
    for files in fi:
        if files.endswith("fasta"):                         
            g=open(os.path.join(r,files))
            shutil.copyfileobj(g,f)
            g.close()
f.close()
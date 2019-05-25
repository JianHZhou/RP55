# This script convert multi-line sequences into one sequences
with open('/Users/zhoujianhong/Documents/Work/Seeds_DisPred2018/RP55_allseq.txt') as f_input, open('RP55_fasta.txt', 'w') as f_output:
    block = []

    for line in f_input:
        if line.startswith('>header'):
            if block:
                f_output.write(''.join(block) + '\n')
                block = []
            f_output.write(line)
        else:
            block.append(line.strip())

    if block:
        f_output.write(''.join(block) + '\n')
filenames = ['data/paper_busxbblxpedxstr_google_speech_commands/snrmix_clean/_generated/training_list.txt', 'data/paper_busxbblxpedxstr_google_speech_commands/snrmix_clean/_generated/pretraining_list.txt']
with open('data/paper_busxbblxpedxstr_google_speech_commands/snrmix_clean/_generated/training_full_list.txt', 'w') as outfile:
    for fname in filenames:
        with open(fname) as infile:
            for line in infile:
                outfile.write(line)
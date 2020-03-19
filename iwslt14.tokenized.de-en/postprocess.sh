#!/bin/bash -v

mosesdecoder=/nas/home/jwei/nmt_w_onmt/mosesdecoder

predictions=$1
target=en

# Get BLEU Score
cat $predictions \
    | sed 's/\@\@ //g' \
    | $mosesdecoder/scripts/tokenizer/detokenizer.perl -l $target \
    > $predictions.detok

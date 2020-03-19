ROOT_DIR=/nas/home/jwei/nmt_iwslt
EXP_DIR=/nas/home/jwei/nmt_iwslt/experiments/transformer2transformer

onmt_translate \
    -model $EXP_DIR/$1 \
    -src $ROOT_DIR/iwslt14.tokenized.de-en/test.en \
    -output $EXP_DIR/output \
    -gpu 0 \
    -beam_size 5 \

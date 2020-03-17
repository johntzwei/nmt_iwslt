ROOT_DIR=/nas/home/jwei/nmt_iwslt
EXP_DIR=/nas/home/jwei/nmt_iwslt/experiments/lstm2lstm

onmt_translate \
    -model $EXP_DIR/$1 \
    -src $ROOT_DIR/iwslt14.tokenized.de-en/test.en \
    -output $EXP_DIR/output \
    -batch_size 64 \
    -gpu 3 \
    -beam_size 5 \

ROOT_DIR=/nas/home/jwei/nmt_iwslt
EXP_DIR=/nas/home/jwei/nmt_iwslt/experiments/bert2lstm

onmt_translate \
    -model $1 \
    -src $ROOT_DIR/iwslt14.tokenized.de-en/test.en.detok \
    -output $EXP_DIR/output \
    -gpu 0 \
    -beam_size 5 \

ROOT_DIR=/nas/home/jwei/nmt_iwslt
EXP_DIR=./

onmt_translate \
    -model $EXP_DIR/$1 \
    -src $ROOT_DIR/iwslt14.tokenized.de-en/30k_bpe/test.de \
    -output $EXP_DIR/output \
    -batch_size 64 \
    -gpu 3 \
    -beam_size 5 \

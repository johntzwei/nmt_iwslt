ROOT_DIR=/nas/home/jwei/nmt_iwslt
EXP_DIR=/nas/home/jwei/nmt_iwslt/experiments/lstm2lstm


onmt_preprocess \
    -train_src $ROOT_DIR/iwslt14.tokenized.de-en/train.en \
    -train_tgt $ROOT_DIR/iwslt14.tokenized.de-en/train.de \
    -valid_src $ROOT_DIR/iwslt14.tokenized.de-en/valid.en \
    -valid_tgt $ROOT_DIR/iwslt14.tokenized.de-en/valid.de \
    -save_data $EXP_DIR/data \
    -share_vocab

ROOT_DIR=/nas/home/jwei/nmt_iwslt
EXP_DIR=./


onmt_preprocess \
    -train_src $ROOT_DIR/iwslt14.tokenized.de-en/10k_bpe/train.de \
    -train_tgt $ROOT_DIR/iwslt14.tokenized.de-en/10k_bpe/train.en \
    -valid_src $ROOT_DIR/iwslt14.tokenized.de-en/10k_bpe/valid.de \
    -valid_tgt $ROOT_DIR/iwslt14.tokenized.de-en/10k_bpe/valid.en \
    -save_data $EXP_DIR/data \
    -share_vocab

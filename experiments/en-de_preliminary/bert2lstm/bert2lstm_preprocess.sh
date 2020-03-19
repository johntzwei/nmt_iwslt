ROOT_DIR=/nas/home/jwei/nmt_iwslt
EXP_DIR=/nas/home/jwei/nmt_iwslt/experiments/bert2lstm


onmt_preprocess \
    -train_src $ROOT_DIR/iwslt14.tokenized.de-en/train.en.detok \
    -train_tgt $ROOT_DIR/iwslt14.tokenized.de-en/train.de \
    -valid_src $ROOT_DIR/iwslt14.tokenized.de-en/valid.en.detok \
    -valid_tgt $ROOT_DIR/iwslt14.tokenized.de-en/valid.de \
    -save_data $EXP_DIR/data \
    -bert bert-base-cased 

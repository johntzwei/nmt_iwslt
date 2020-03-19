ROOT_DIR=/nas/home/jwei/nmt_iwslt
EXP_DIR=/nas/home/jwei/nmt_iwslt/experiments/bert2lstm

onmt_train \
    -data $EXP_DIR/data \
    -save_model $EXP_DIR/model \
    -save_checkpoint_steps 2000 \
    -keep_checkpoint 1 \
    -log_file $EXP_DIR/log \
    -word_vec_size 1024 \
    -encoder_type bert \
    -bert bert-base-cased \
    -enc_rnn_size 2048 \
    -decoder_type rnn \
    -dec_layers 2 \
    -dec_rnn_size 1024 \
    -global_attention general \
    -global_attention_function softmax \
    -world_size 1 \
    -gpu_ranks 0 \
    -batch_size 64 \
    -early_stopping 10 \
    -valid_steps 2000 \
    -optim adam \
    -learning_rate 0.0005 \
    -max_grad_norm 5 \
    -attention_dropout 0.4 \
    -label_smoothing 0.2

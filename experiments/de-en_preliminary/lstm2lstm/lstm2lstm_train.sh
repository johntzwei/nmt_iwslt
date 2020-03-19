ROOT_DIR=/nas/home/jwei/nmt_iwslt
EXP_DIR=./

onmt_train \
    -data $EXP_DIR/data \
    -save_model $EXP_DIR/model \
    -train_steps 200000 \
    -keep_checkpoint 1 \
    -log_file $EXP_DIR/log \
    -share_embeddings \
    -word_vec_size 1024 \
    -encoder_type brnn \
    -decoder_type rnn \
    -enc_layers 2 \
    -dec_layers 2 \
    -enc_rnn_size 1024 \
    -dec_rnn_size 1024 \
    -global_attention general \
    -global_attention_function softmax \
    -world_size 1 \
    -gpu_ranks 0 \
    -batch_size 128 \
    -early_stopping 10 \
    -valid_steps 2000 \
    -save_checkpoint_steps 2000 \
    -optim adam \
    -learning_rate 0.0005 \
    -max_grad_norm 5 \
    -dropout 0.4 \
    -attention_dropout 0.4 \
    -label_smoothing 0.2 \
    -source_word_dropout 0.3 \
    -target_word_dropout 0.3

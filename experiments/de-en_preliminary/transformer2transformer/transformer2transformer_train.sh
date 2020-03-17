ROOT_DIR=/nas/home/jwei/nmt_iwslt
EXP_DIR=/nas/home/jwei/nmt_iwslt/experiments/transformer2transformer

onmt_train \
    -data $EXP_DIR/data \
    -save_model $EXP_DIR/model \
    -train_steps 200000 \
    -keep_checkpoint 1 \
    -log_file $EXP_DIR/log \
    -share_embeddings \
    -layers 6 \
    -rnn_size 512 \
    -word_vec_size 512 \
    -transformer_ff 1024 \
    -heads 4  \
    -encoder_type transformer \
    -decoder_type transformer \
    -position_encoding \
    -dropout 0.1 \
    -batch_size 4096 \
    -batch_type tokens \
    -normalization tokens \
    -optim adam \
    -adam_beta2 0.998 \
    -decay_method noam \
    -warmup_steps 8000 \
    -learning_rate 2 \
    -max_grad_norm 0 \
    -param_init 0 \
    -param_init_glorot \
    -label_smoothing 0.1 \
    -valid_steps 3000 \
    -early_stopping 5 \
    -save_checkpoint_steps 3000 \
    -world_size 1 \
    -gpu_ranks 0 \

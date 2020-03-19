DATA_DIR=/nas/home/jwei/nmt_iwslt/iwslt14.tokenized.de-en/

NAME=$1
NUM=$2

paste -d'\t' $DATA_DIR/train.de $DATA_DIR/train.en > train.de+en

cat train.de+en | \
    shuf | \
    head -n $NUM > sample.de+en

mkdir $1

cat sample.de+en | cut -f1 -d'	' > $1/train.de
cat sample.de+en | cut -f2 -d'	' > $1/train.en

wc $1/*

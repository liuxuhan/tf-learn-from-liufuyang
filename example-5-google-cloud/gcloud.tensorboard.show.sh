export BUCKET_NAME=my-cnn-project
export JOB_NAME=example_5_train_keras_w_grad/logs/
export OUTPUT_PATH=gs://$BUCKET_NAME/$JOB_NAME

python -m tensorflow.tensorboard --logdir=$OUTPUT_PATH
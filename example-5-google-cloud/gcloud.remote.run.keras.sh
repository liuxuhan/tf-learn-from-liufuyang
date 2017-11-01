export BUCKET_NAME=my-cnn-project
export JOB_NAME=example_5_train_keras_w_grad
export JOB_DIR=gs://$BUCKET_NAME/$JOB_NAME
export REGION=asia-east1

gcloud ml-engine jobs submit training $JOB_NAME \
  --job-dir gs://$BUCKET_NAME/$JOB_NAME \
  --runtime-version 1.0 \
  --module-name trainer.example5-keras \
  --package-path ./trainer \
  --region $REGION \
  --config=trainer/cloudml-gpu.yaml \
  -- \
  --train-file gs://my-cnn-project/example5/sentiment_set.pickle
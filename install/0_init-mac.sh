TMP_DIR=$HOME/tmp
GCLOUD_SDK_NAME=google-cloud-sdk-293.0.0-darwin-x86_64.tar.gz

cd $TMP_DIR
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-293.0.0-darwin-x86_64.tar.gz
tar xzvf $GCLOUD_SDK_NAME
# terraform
brew install terraform
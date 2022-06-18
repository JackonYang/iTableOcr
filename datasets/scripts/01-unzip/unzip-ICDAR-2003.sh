
dataset_filename="ICDAR2003-SceneTrialTrain-GT4.tar.gz"

SCRIPT_DIR=$(cd $(dirname "$0") && pwd)
DATASET_ROOT=$(realpath "$SCRIPT_DIR/../../")

output_path=$DATASET_ROOT/raw

dataset_path=$DATASET_ROOT/compressed/$dataset_filename

mkdir -p $output_path

pushd $output_path >> /dev/null

tar -zxf $dataset_path

popd >> /dev/null

echo "$dataset_filename unziped"

dataset_filename="ICDAR2013"

SCRIPT_DIR=$(cd $(dirname "$0") && pwd)
DATASET_ROOT=$(realpath "$SCRIPT_DIR/../../")

output_path=$DATASET_ROOT/raw
dataset_path=$DATASET_ROOT/compressed/$dataset_filename

mkdir -p $output_path

pushd $output_path >> /dev/null

find $dataset_path -name "*.zip" | xargs -I{} unar -q -d {}

popd >> /dev/null

echo "$dataset_filename unziped"

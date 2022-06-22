SCRIPT_DIR=$(cd $(dirname "$0") && pwd)
PROJ_ROOT=$(realpath "$SCRIPT_DIR/../../")
output_path=$PROJ_ROOT/data-cache

data_path="raw-data/ICDAR2003-SceneTrialTrain-GT4.tar.gz"

mkdir -p $output_path

pushd $output_path >> /dev/null

rm -rf ICDAR2003-SceneTrialTrain-GT4
tar -zxf "$PROJ_ROOT/$data_path"

popd >> /dev/null

echo "unziped $data_path to $output_path"

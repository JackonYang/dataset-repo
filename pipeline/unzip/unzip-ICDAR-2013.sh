SCRIPT_DIR=$(cd $(dirname "$0") && pwd)
PROJ_ROOT=$(realpath "$SCRIPT_DIR/../../")
output_path=$PROJ_ROOT/data-cache

data_path="raw-data/ICDAR2013"

mkdir -p $output_path

pushd $output_path >> /dev/null

data_name="ICDAR2013"
rm -rf $data_name && mkdir -p $data_name && cd $data_name

find "$PROJ_ROOT/$data_path" -name "*.zip" | xargs -I{} unar -q -d {}

popd >> /dev/null

echo "unziped $data_path to $output_path/$data_name"

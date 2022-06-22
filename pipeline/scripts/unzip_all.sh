SCRIPT_DIR=$(cd $(dirname "$0") && pwd)

find $SCRIPT_DIR/../unzip -name "*.sh" | xargs -I{} bash "{}"

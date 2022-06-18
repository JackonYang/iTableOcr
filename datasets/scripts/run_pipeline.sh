echo "=============================="
echo "      unzip all datasets"
echo "=============================="
SCRIPT_DIR=$(cd $(dirname "$0") && pwd)

# clear old data
rm -rf $SCRIPT_DIR/../raw

find $SCRIPT_DIR/01-unzip -name "*.sh" | xargs -I{} bash "{}"

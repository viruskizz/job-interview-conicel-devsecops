#!/bin/bash
TARGET_DIR=$1
if [ -z "$TARGET_DIR" ]; then
    echo "Usage: $0 <target_directory>"
    exit 1
fi

FILES="$(find $TARGET_DIR -type f -name '*.yaml')"

for file in $FILES; do
    echo "Applying $file"
    kubectl apply -f "$file"
    if [ $? -ne 0 ]; then
        echo "Failed to apply $file"
        exit 1
    fi
done

echo "All files applied successfully."
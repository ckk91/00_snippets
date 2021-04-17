#!/usr/bin/env bash
# for below use cases, use rsync instead
scp -r $LOCAL_DIR $REMOTE_HOST:$TARGET_PATH  # copy folders recursively
scp -r $LOCAL_DIR/* $REMOTE_HOST:$TARGET_PATH  # copy folder CONTENTS recursively
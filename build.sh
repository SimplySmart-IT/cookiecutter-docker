#!/bin/sh
# @package   SimplySmart-IT.Tools.Cookiecutter
# @copyright Copyright (C) 2024 Martina Scholz <https://simplysmart-it.de>
# @license   http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL

LOCAL_NAME=ghcr.io/simplysmart-it/cookiecutter-docker:alpine-13.9.1
BUILD_PATH=${BUILD:-.}

echo "Building $LOCAL_NAME"
echo "Build path: $BUILD_PATH"

docker image build \
    --no-cache --pull \
    -t $LOCAL_NAME $BUILD_PATH
    # --progress=plain \ # --> debug build process

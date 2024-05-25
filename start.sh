#!/bin/sh
# @package   SimplySmart-IT.Tools.Cookiecutter
# @copyright Copyright (C) 2024 Martina Scholz <https://simplysmart-it.de>
# @license   http://www.gnu.org/licenses/gpl-3.0.html GNU/GPL

params=''

if [ ! -z ${DIRECTORY:-} ]; then
    DIRECTORY=$(printf "--directory %s" "${DIRECTORY:-}")
    params="${params:-} $DIRECTORY"
fi

if [ ! -z ${CHECKOUT:-} ]; then
    CHECKOUT=$(printf "--checkout %s" "${CHECKOUT:-}")
    params="${params:-} $CHECKOUT"
fi

if [ -f /cookie_config/.cookiecutterrc ]; then
    params="${params:-} --config-file /cookie_config/.cookiecutterrc"
fi

if [ -f $OUT_DIR/cookiecutter-replay.json ]; then
    params="${params:-} --replay-file $OUT_DIR/cookiecutter-replay.json -f"
fi

cookiecutter -o $OUT_DIR $TEMPLATE ${params:-}

chown -R $(ls -ld $OUT_DIR | awk '{print $3":"$4}' ) $OUT_DIR/*

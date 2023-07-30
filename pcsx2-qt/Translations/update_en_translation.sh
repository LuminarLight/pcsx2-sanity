#!/bin/bash

SCRIPTDIR=$(dirname "${BASH_SOURCE[0]}")

OPTS="-tr-function-alias QT_TRANSLATE_NOOP+=TRANSLATE,QT_TRANSLATE_NOOP+=TRANSLATE_SV,QT_TRANSLATE_NOOP+=TRANSLATE_STR,QT_TRANSLATE_NOOP+=TRANSLATE_FS,QT_TRANSLATE_N_NOOP3+=TRANSLATE_FMT,QT_TRANSLATE_NOOP+=TRANSLATE_NOOP"
SRCDIRS=$(realpath "$SCRIPTDIR/..")/\ $(realpath "$SCRIPTDIR/../../pcsx2")/
OUTDIR=$(realpath "$SCRIPTDIR")

lupdate $SRCDIRS $OPTS -no-obsolete -source-language en -ts "$OUTDIR/pcsx2-qt_en.ts"

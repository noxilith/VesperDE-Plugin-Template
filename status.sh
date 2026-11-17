#!/bin/sh
# Bar widget: print ONE line. "glyph|text" shows a glyph first; print nothing to hide the widget.
# Environment: VESPER_PLUGIN_ID, VESPER_PLUGIN_DIR (this folder), VESPER_SOCKET (the compositor's socket).
printf '\357\200\227|%s\n' "$(date +%H:%M)"   # a clock glyph, then the time

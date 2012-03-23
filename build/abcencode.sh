# Translate .abc to .asm
#
# You must first build a tamarin executable and store it under the
# name "shell" (or "shell.exe") in the directory $DIR.
#
# usage:
#   abcencode.sh <filename>
#
# abcencode.sh must be run from $DIR, or you must change the value of
# $DIR to be the absolute path of the bin directory (that has the
# shell and the abc files for ESC).

DIR=../bin

$DIR/shell\
    $DIR/debug.l0.abc \
    $DIR/util.l0.abc \
    $DIR/bytes-tamarin.l0.abc \
    $DIR/util-tamarin.l0.abc \
    $DIR/lex-token.l0.abc \
    $DIR/asm.l0.abc \
    $DIR/abc.l0.abc \
    $DIR/abc-encode.l0.abc \
    $DIR/abc-parse.l0.abc \
    $DIR/abcenc.l0.abc \
    -- $@



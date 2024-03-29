# Translate .es to .es.abc using esc on tamarin
#
# You must first build a tamarin executable and store it under the
# name "shell" (or "shell.exe") in the directory $DIR.
#
# Usage:
#   esc.sh [<option> ...] <filename> ...
#
# Options:
#
#   -[no-]es3
#      Recognize only (not only) ES3 keywords (not "future reserved words")
#
#   -[no-]extensions
#      Turn on (off) some extensions to ES4 (UTSL)
#
#   -g
#   -[no-]debug
#      Emit (do not emit) debug information
#
#   -Xprofile
#      Profile the compiler: dump a statistical profile to the file 
#      esc.profile following compilation.
#
# Defaults are -no-es3 -no-extensions -no-debug.
#
# esc.sh must be run from $DIR, or you must change the value of
# $DIR to be the absolute path of the bin directory (that has the
# shell and the abc files for ESC).

DIR=../src
BIN=../bin

$BIN/shell $BIN/l0c.swf \
    -- -debug -extensions \
       $DIR/debug.l0 \
       $DIR/util.l0 \
       $DIR/bytes-tamarin.l0 \
       $DIR/util-tamarin.l0 \
       $DIR/lex-char.l0 \
       $DIR/lex-token.l0 \
       $DIR/lex-scan.l0 \
       $DIR/ast.l0 \
       $DIR/define.l0 \
       $DIR/parse.l0 \
       $DIR/asm.l0 \
       $DIR/abc.l0 \
       $DIR/abc-encode.l0 \
       $DIR/abc-decode.l0 \
       $DIR/emit.l0 \
       $DIR/cogen.l0 \
       $DIR/cogen-stmt.l0 \
       $DIR/cogen-expr.l0 \
       $DIR/comp-core.l0 \
       $DIR/eval-support.l0 \
       $DIR/comp-env.l0 \
       $DIR/sampler.l0 \
       $DIR/swf.l0 \
       $DIR/l1c.l0

cp ../src/*.l0.abc ../bin
# Interactive/non-interactive interpreter with eval.
#
# If file name arguments are present then they are compiled, 
# loaded, and executed before the shell exits.  Otherwise 
# the shell enters a repl.

if [[ "$ESCBIN" = "" ]]
then
	ESCBIN=../bin
fi

$ESCBIN/shell \
    $ESCBIN/debug.l0.abc \
    $ESCBIN/util.l0.abc \
    $ESCBIN/bytes-tamarin.l0.abc \
    $ESCBIN/util-tamarin.l0.abc \
    $ESCBIN/lex-char.l0.abc \
    $ESCBIN/lex-token.l0.abc \
    $ESCBIN/lex-scan.l0.abc \
    $ESCBIN/ast.l0.abc \
    $ESCBIN/define.l0.abc \
    $ESCBIN/parse.l0.abc \
    $ESCBIN/asm.l0.abc \
    $ESCBIN/abc.l0.abc \
    $ESCBIN/emit.l0.abc \
    $ESCBIN/cogen.l0.abc \
    $ESCBIN/cogen-stmt.l0.abc \
    $ESCBIN/cogen-expr.l0.abc \
    $ESCBIN/comp-core.l0.abc \
    $ESCBIN/eval-support.l0.abc \
    $ESCBIN/comp-env.l0.abc \
    $ESCBIN/main.l0.abc \
    -- $@

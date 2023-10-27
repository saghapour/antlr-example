lexer grammar SqlLexer;

options { caseInsensitive = false; }

/* case insensitive lexer matching */
fragment A:('a'|'A');
fragment B:('b'|'B');
fragment C:('c'|'C');
fragment D:('d'|'D');
fragment E:('e'|'E');
fragment F:('f'|'F');
fragment G:('g'|'G');
fragment H:('h'|'H');
fragment I:('i'|'I');
fragment J:('j'|'J');
fragment K:('k'|'K');
fragment L:('l'|'L');
fragment M:('m'|'M');
fragment N:('n'|'N');
fragment O:('o'|'O');
fragment P:('p'|'P');
fragment Q:('q'|'Q');
fragment R:('r'|'R');
fragment S:('s'|'S');
fragment T:('t'|'T');
fragment U:('u'|'U');
fragment V:('v'|'V');
fragment W:('w'|'W');
fragment X:('x'|'X');
fragment Y:('y'|'Y');
fragment Z:('z'|'Z');

MERGE : M E R G E;
INTO : I N T O;
USING : U S I N G;
AS : A S;

DOT: '.';

LETTER : [A-Za-z]+;
DIGIT : [0-9]+;

SPACES      : [ \t\r\n] -> skip;
BLOCK_COMMENT       : '/*' .*? '*/' -> channel(HIDDEN);
LINE_COMMENT        : '--' .*? '\n' -> channel(HIDDEN);


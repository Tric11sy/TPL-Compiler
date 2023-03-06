lexer grammar CiLexer;

fragment DIGITNOZERO  :  [1-9]                       ;
fragment DIGIT        :  [0-9]                       ;
fragment SYMBOL       :  [_a-zA-Z]                   ;
fragment NAME         :  SYMBOL ( SYMBOL | DIGIT )*  ;


INTEGER  :  '0' | DIGITNOZERO ( DIGIT )*  ;
FLOAT    :  INTEGER '.' INTEGER           ;
STRING   :  '" ' ~ ["\n\r]* '"'           ;


INT  :  'int'  ;


IDENTIFIER:  'main'  ;


RETURN  :  'return'  ;
CONST   :  'const'   ;
WHILE   :  'while'   ;
FOR     :  'for'     ;
BREAK   :  'break'   ;
IF	:  'if'      ;
ELSE    :  'else'    ;
STRUCT  :  'struct'  ;


LBRACE    :  '{'   ;
RBRACE    :  '}'   ;
LBRACKET  :  '['   ;
RBRACKET  :  ']'   ;
COMMA     :  ','   ;
SEMI      :  ';'   ;
COLON     :  ':'   ;
LPAREN    :  '('   ;
RPAREN    :  ')'   ;
POINT     :  '.'   ;
LESS      :  '<'   ;
GR        :  '>'   ;
LESSEQ    :  '<='  ;
GREQ      :  '>='  ;
EQ        :  '=='  ;
NEQ       :  '!='  ;
ASSIGN    :  '='   ;
BR        :  '"'   ;

PLUS    :  '+'   ;
MINUS   :  '-'   ;
STAR    :  '*'   ;
SLASH   :  '/'   ;
PERCNT  :  '%'   ;
MPRSND  :  '&'   ;
STICK   :  '|'   ;
UARROW  :  '^'   ;
LSHIFT  :  '<<'  ;
RSHIFT  :  '>>'  ;

ARROW  : '->' ;
EXCLM  : '!'  ;

WS: [ \n\t\r]+ -> skip;

ID  :  NAME EXCLM?  ;

INVALID: .;

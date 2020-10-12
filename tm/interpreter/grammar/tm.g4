grammar tm;

program     : statement* EOF ;
statement   : ZERO state_name ZERO symbol ZERO state_name ZERO symbol ZERO direction ZERO;
state_name  : ONE+ ;
symbol      : ONE           # ZeroSymbol
            | ONE ONE       # OneSymbol
            |               # LambdaSymbol
            ;
direction   : ONE           # Left
            | ONE ONE       # Right
            |               # Neutral
            ;

ZERO: '0' ;
ONE : '1' ;
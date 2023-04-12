grammar compiladores;

//@header {
//package compiladores;
//}

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

PYC : ';';
PA : '(' ;
PC : ')' ;
LLA : '{' ;
LLC : '}' ;
ASSIGN : '=';
EQ : '==' ;


WS : [ \n\t\r] -> skip ;


NUMERO : DIGITO+ ;
//OTRO : . ;

INT : 'int' ; 

ID : (LETRA | '_')(LETRA | DIGITO | '_')* ;



////s : ID     { System.out.println("ID ->" + $ID.getText() + "<--"); }         s
//  | NUMERO { System.out.println("NUMERO ->" + $NUMERO.getText() + "<--"); } s
//  | OTRO   { System.out.println("Otro ->" + $OTRO.getText() + "<--"); }     s
//  | EOF
//  ;

//si : s
//   | EOF
//   ;
//
//s : PA s PC s
//  |
//  ; 

programa : instrucciones EOF ;

instrucciones : instruccion instrucciones
              |
              ;

intruccion : asignacion
           | declaracion
           ;

asignacion : ID ASSIGN NUMERO PYC;

declaracion : INT ID inicializacion PYC ;

inicializacion : ASSIGN NUMERO
               |
               ;
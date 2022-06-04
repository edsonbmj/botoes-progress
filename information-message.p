/*
@author Edson Barroso
@since 04/06/2022
@version 1.0
*/

//  ------------------------------------------------------------------
//  CAIXA DE TEXTO PARA CONFIRMAR, N�O CONFIRMAR E CANCELAR OPERA��O
//  ------------------------------------------------------------------

MESSAGE
    "DELETAR REGISTRO?"
    VIEW-AS ALERT-BOX QUESTION BUTTONS YES-NO-CANCEL
    TITLE "ATTENTION" UPDATE lChoice AS LOGICAL.
    
//ALTERNATIVAS PARA CADA OP��O
    IF lChoice = YES THEN
    DO:
//APAGAR REGISTRO    
        MESSAGE "REGISTRO APAGADO."
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.    ELSE DO:
//CANCELAR OPERA��O  
    IF lChoice = ? THEN
    DO:
        MESSAGE "OPERA��O CANCELADA!"
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.    ELSE DO:
//N�O APAGAR REGISTRO           
        MESSAGE "REGISTRO N�O APAGADO!"
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.
END.


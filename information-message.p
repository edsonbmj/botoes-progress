/*
@author Edson Barroso
@since 04/06/2022
@version 1.0
*/

//  ------------------------------------------------------------------
//  CAIXA DE TEXTO PARA CONFIRMAR, NÃO CONFIRMAR E CANCELAR OPERAÇÃO
//  ------------------------------------------------------------------

MESSAGE
    "DELETAR REGISTRO?"
    VIEW-AS ALERT-BOX QUESTION BUTTONS YES-NO-CANCEL
    TITLE "ATTENTION" UPDATE lChoice AS LOGICAL.
    
//ALTERNATIVAS PARA CADA OPÇÃO
    IF lChoice = YES THEN
    DO:
//APAGAR REGISTRO    
        MESSAGE "REGISTRO APAGADO."
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.    ELSE DO:
//CANCELAR OPERAÇÃO  
    IF lChoice = ? THEN
    DO:
        MESSAGE "OPERAÇÃO CANCELADA!"
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.    ELSE DO:
//NÃO APAGAR REGISTRO           
        MESSAGE "REGISTRO NÃO APAGADO!"
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.
END.


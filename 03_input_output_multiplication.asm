.MODEL SMALL
.STACK
.DATA  
    A DB ?   
    B DB ?   
    PRODUCT DW ?   
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    

    MOV AH, 01H
    INT 21H
    MOV BL, AL 
    SUB BL, 30H
    

    MOV AH, 01H
    INT 21H
    MOV BH, AL  
    SUB BH, 30H
    
   
    MOV AL, BL
    MUL BH
    
   
    MOV [PRODUCT], AX  
    
    
    MOV DL, AL 
    ADD DL, 30H
    MOV AH, 02H
    INT 21H
    


MAIN ENDP
END MAIN

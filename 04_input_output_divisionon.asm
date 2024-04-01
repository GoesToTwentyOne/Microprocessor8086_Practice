.MODEL SMALL
.STACK
.DATA  
    A DB ?   
    B DB ?   
    QUOTIENT DB ?   
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
    
    ; Perform division
    MOV AL, BL
    DIV BH
    
    ; Store the quotient in memory
    MOV [QUOTIENT], AL  
    
    ; Display the quotient
    MOV DL, AL 
    ADD DL, 30H 
    MOV AH, 02H
    INT 21H
    

MAIN ENDP
END MAIN

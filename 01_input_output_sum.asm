.MODEL SMALL
.STACK
.DATA  
    A DB ?   
    B DB ?   
    SUM DW ?   
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
   
   
    ADD BL, BH
    

    ADD BL, 30H
    

    MOV [SUM], BX  
    
 
    MOV DL, BL
    MOV AH, 02H
    INT 21H



MAIN ENDP
END MAIN

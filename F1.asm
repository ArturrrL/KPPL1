MODEL	SMALL
STACK 256	
DATASEG
krok equ 1		
CODESEG
start:
mov ax,0013h     
int 10h
mov ah,0Ch



mov cx,0		
mov dx,0		

nebo:			
add cx,krok		
mov dx,0
line:			
mov al,1		
int 10h			
inc dx			
cmp dx,200		
jne line		
cmp cx,319
jne nebo



mov cx,80
mov dx,130
kuzev_loop:
line_1:			
mov al,0		
int 10h			
inc cx
cmp cx,240
jne line_1
mov cx,80
inc dx
cmp dx,160
jne kuzev_loop


mov cx,140
mov dx,100
kokpit_loop:
line_2:			
mov al,8	
int 10h			
inc cx
cmp cx,180
jne line_2
mov cx,140
inc dx
cmp dx,130
jne kokpit_loop


mov cx,70
mov dx,150
krilo1_loop:
line_3:			
mov al,15		
int 10h			
inc cx
cmp cx,100
jne line_3
mov cx,70
inc dx
cmp dx,160
jne krilo1_loop


mov cx,220
mov dx,100
krilo2_loop:
line_4:			
mov al,0		
int 10h			
inc cx
cmp cx,260
jne line_4
mov cx,220
inc dx
cmp dx,120
jne krilo2_loop


mov cx,90
mov dx,160
koleso1_loop:
line_5:			
mov al,0		
int 10h			
inc cx
cmp cx,110
jne line_5
mov cx,90
inc dx
cmp dx,180
jne koleso1_loop

mov cx,90
mov dx,160
obvodka1_loop:
line_6:			
mov al,4	
int 10h			
inc cx
cmp cx,110
jne line_6
mov cx,90
inc dx
cmp dx,180
jne obvodka1_loop


mov cx,210
mov dx,160
koleso2_loop:
line_7:			
mov al,0	
int 10h			
inc cx
cmp cx,230
jne line_7
mov cx,210
inc dx
cmp dx,180
jne koleso2_loop

mov cx,210
mov dx,160
obvodka2_loop:
line_8:			
mov al,4		
int 10h			
inc cx
cmp cx,230
jne line_8
mov cx,210
inc dx
cmp dx,180
jne obvodka2_loop

mov cx,100
mov dx,120
logo_loop:
line_9:			
mov al,4		
int 10h			
inc cx
cmp cx,140
jne line_9
mov cx,100
inc dx
cmp dx,130
jne logo_loop

ex:
	mov ah,1
	int 16h
jz ex

	mov ax,0003h
	int 10h
	mov ah,04Ch
	int 21h
end start
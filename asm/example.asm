	ORG &5000
	LD HL,TEXT
	CALL LOOP
	CALL &BB06
	RET
LOOP    LD A,(HL)
	CP 0
	RET Z
	CALL &BB5A
	INC HL
	JP LOOP
;
TEXT    DB "Hello!",0
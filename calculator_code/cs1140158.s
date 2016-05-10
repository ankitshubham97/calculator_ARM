.data


blank:
    .ascii      "                                 "
	

	

.text

mov r0,#171
swi 0x200





mov r0,#0
mov r1,#0
mov r2,#'v
swi 0x207
mov r0,#1
mov r2,#'0
swi 0x207
mov r0,#2
mov r2,#'=
swi 0x207

mov r0,#0
mov r1,#1
mov r2,#'v
swi 0x207
mov r0,#1
mov r2,#'1
swi 0x207
mov r0,#2
mov r2,#'=
swi 0x207

mov r0,#0
mov r1,#2
mov r2,#'v
swi 0x207
mov r0,#1
mov r2,#'2
swi 0x207
mov r0,#2
mov r2,#'=
swi 0x207

mov r0,#0
mov r1,#3
mov r2,#'v
swi 0x207
mov r0,#1
mov r2,#'3
swi 0x207
mov r0,#2
mov r2,#'=
swi 0x207

mov r0,#0
mov r1,#4
mov r2,#'v
swi 0x207
mov r0,#1
mov r2,#'4
swi 0x207
mov r0,#2
mov r2,#'=
swi 0x207

mov r0,#0
mov r1,#5
mov r2,#'v
swi 0x207
mov r0,#1
mov r2,#'5
swi 0x207
mov r0,#2
mov r2,#'=
swi 0x207

mov r0,#0
mov r1,#6
mov r2,#'v
swi 0x207
mov r0,#1
mov r2,#'6
swi 0x207
mov r0,#2
mov r2,#'=
swi 0x207

mov r0,#0
mov r1,#7
mov r2,#'v
swi 0x207
mov r0,#1
mov r2,#'7
swi 0x207
mov r0,#2
mov r2,#'=
swi 0x207

mov r0,#0
mov r1,#8
mov r2,#'v
swi 0x207
mov r0,#1
mov r2,#'8
swi 0x207
mov r0,#2
mov r2,#'=
swi 0x207

mov r0,#0
mov r1,#9
mov r2,#'v
swi 0x207
mov r0,#1
mov r2,#'9
swi 0x207
mov r0,#2
mov r2,#'=
swi 0x207

mov r0,#0
mov r1,r0
mov r2,r0

;;;;;;populating the variable chart in memory
mov r5,#8192
add r6,r5,#-24
str r6,[r5]
mov r5,#0
mov r6,#0
;;black pointer is set to 6th position from left (v5)
;;pointer address stored at address 8192

back_to_starting:

mov r0,#10
swi 0x208
mov r0,#0
mov r1,#0
mov r2,#0
mov r3,#0
mov r4,#0
mov r5,#0
mov r6,#0
mov r7,#0
mov r8,#0
mov r9,#0
mov r1,#12288
mov r2,#16384
mov r3,#20480
mov r9,#0
limp:swi 0x203
cmp r0,#1
beq l0
cmp r0,#2
beq l1
cmp r0,#4
beq l2
cmp r0,#8
beq l3
cmp r0,#16
beq l4
cmp r0,#32
beq l5
cmp r0,#64
beq l6
cmp r0,#128
beq l7
cmp r0,#256
beq l8
cmp r0,#512
beq l9
cmp r0,#1024
beq l10
cmp r0,#2048
beq l11
cmp r0,#4096
beq l12
cmp r0,#8192
beq l13
cmp r0,#16384
beq l14
cmp r0,#32768
beq l15
swi 0x202
cmp r0,#1
beq m1
cmp r0,#2
beq m2
bne limp
l0: mov r4,#0
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l1: mov r4,#1
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l2: mov r4,#2
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l3: mov r4,#3
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l4: mov r4,#4
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l5: mov r4,#5
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l6: mov r4,#6
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l7: mov r4,#7
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l8: mov r4,#8
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l9: mov r4,#9
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l10: 
b assign
mov r0,#0
b limp
l11: 
bl recall
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
cmp r4,#0
bge itsgood
str r2,[sp,#-4]!
mov r1,#10
mov r0,r9
mov r2,#'-
swi 0x207
mvn r2,r4
add r2,r2,#1
mov r1,#10
add r9,r9,#1
mov r0,r9
swi 0x205
sub r9,r9,#1
ldr r2,[sp],#4
b next_comp
itsgood:
mov r2,r4
mov r1,#10
mov r0,r9
swi 0x205
next_comp:
cmp r2,#0
blt neg_inp
bl no_of_digit
b okay
neg_inp:
bl no_of_digit_neg
okay:
add r9,r9,r4
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l12: mov r4,#-1073741825 ;=-2^30 -1
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,#'+
mov r1,#10
mov r0,r9
swi 0x207
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l13: mov r4,#-536870913 ;=-2^29 -1
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,#'-
mov r1,#10
mov r0,r9
swi 0x207
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
l14: mov r4,#-268435457 ;=-2^28 -1
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,#'*
mov r1,#10
mov r0,r9
swi 0x207
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4 
mov r0,#0
b limp 
l15: mov r4,#-134217729 ;=-2^27 -1
str r4,[r1,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
mov r2,#'/
mov r1,#10
mov r0,r9
swi 0x207
add r9,r9,#1
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mov r0,#0
b limp
m1:
str lr,[sp,#-4]!
str r4,[sp,#-4]!
str r5,[sp,#-4]!
mov r4,#8192
ldr r5,[r4]
sub r4,r4,#40
cmp r5,r4
beq m1end
sub r5,r5,#4
bl set8seg
mov r4,#8192
str r5,[r4]
m1end:
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr lr,[sp],#4
b limp
m2:
str lr,[sp,#-4]!
str r4,[sp,#-4]!
str r5,[sp,#-4]!
mov r4,#8192
ldr r5,[r4]
sub r4,r4,#4
cmp r5,r4
beq m2end
add r5,r5,#4
bl set8seg
mov r4,#8192
str r5,[r4]
m2end:
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr lr,[sp],#4
b limp
;;;;; till here , pushing the entered data into primary stack is done.
 assign:
manage_digit:
mov r5,#10
ldr r8,[r1],#4
str r8,[r2,#-4]!
while_managedigit:
ldr r6,[r1],#4
ldr r7,[r2],#4
orr r8,r6,r7
cmp r8,#0
blt else_managedigit
mla r8,r5,r6,r7
str r8,[r2,#-4]!
mov r8,#10
mul r5,r8,r5
b cmp_managedigit
else_managedigit:
mov r5,#10
str r7,[r2,#-4]!
str r6,[r2,#-4]!
cmp_managedigit:
cmp r1,#12288
bne while_managedigit
while2_managedigit:
ldr r8,[r2],#4
str r8,[r1,#-4]!
cmp r2,#16384
bne while2_managedigit
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
manage_unary:
ldr r8,[r1],#4
str r8,[r2,#-4]!
while_manageunary:
ldr r6,[r1]
ldr r7,[r2]

cmp r6,#0xbfffffff
beq seccond
cmp r6,#0xdfffffff
beq seccond
cmp r6,#0xefffffff
beq seccond
cmp r6,#0xf7ffffff
beq seccond
b else1_manageunary

seccond:
cmp r7,#0xbfffffff
beq inside
cmp r7,#0xdfffffff
beq inside
b else1_manageunary

inside:
ldr r6,[r2],#4
ldr r7,[r2],#4
cmp r6,#0xbfffffff
bne sndifinside
str r7,[r2,#-4]!

sndifinside:
cmp r6,#0xdfffffff
bne beforewhile
mov r9,#-1
mul r7,r9,r7
str r7,[r2,#-4]!
b beforewhile
else1_manageunary:
ldr r8,[r1],#4
str r8,[r2,#-4]!
beforewhile:
cmp r1,#12288
bne while_manageunary


ldr r6,[r2]
cmp r6,#0xbfffffff
bne else3_manageunary
add r2,r2,#4
else3_manageunary:
cmp r6,#0xdfffffff
bne else4_manageunary
add r2,r2,#4
ldr r6,[r2],#4
mov r9,#-1
mov r8,r6
mul r8,r9,r8  
str r8,[r2,#-4]!
else4_manageunary:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
conv_postfix:
while1ini_post:
cmp r2,#16384
beq while1_post
ldr r6,[r2],#4 
cmp r6,#0xdfffffff
beq else1_post
cmp r6,#0xbfffffff
beq else1_post
cmp r6,#0xefffffff
beq else1_post
cmp r6,#0xf7ffffff
beq else1_post
str r6,[r1,#-4]!
b while1ini_post
else1_post:
cmp r3,#20480
beq else2_post
while3_post:
mov r5,r6
bl priority
mov r8,r5
ldr r7,[r3]
mov r5,r7
bl priority
sub r5,r8,r5
cmp r5,#0
blt while2_post
ldr r7,[r3],#4
str r7,[r1,#-4]!
cmp r3,#20480
beq while2_post
b while3_post

while2_post:
str r6,[r3,#-4]!
b while1ini_post
else2_post:
str r6,[r3,#-4]!
b while1ini_post
while1_post:
thiswhole_post:
cmp r3,#20480
beq nextwhile_post
ldr r7,[r3],#4
str r7,[r1,#-4]!
b thiswhole_post

nextwhile_post:
cmp r1,#12288
beq end_post
ldr r8,[r1],#4
str r8,[r3,#-4]!
b nextwhile_post
end_post:
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
calculate:
do_calc:
ldr r6,[r3],#4
cmp r6,#0xdfffffff
beq else_calc
cmp r6,#0xbfffffff
beq else_calc
cmp r6,#0xefffffff
beq else_calc
cmp r6,#0xf7ffffff
beq else_calc
str r6,[r1,#-4]!
b while_calc
else_calc:
ldr r8,[r1],#4
ldr r7,[r1],#4
bl evaluateexp
str r6,[r1,#-4]!
while_calc:
cmp r3,#20480
bne do_calc

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;moving result to variable chart at the black pointer (in memory) 
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
str r3,[sp,#-4]!
str r6,[sp,#-4]!
str r7,[sp,#-4]!
str r8,[sp,#-4]!
mov r0,#8192
ldr r1,[r0]
mov r2,#12288
sub r2,r2,#4
ldr r3,[r2]
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
str r3,[sp,#-4]!
str r5,[sp,#-4]!
str r6,[sp,#-4]!
str r7,[sp,#-4]!
str r8,[sp,#-4]!
ldr r6,[r1]
ldr r7,[r2,#8]
cmp r6,r7
beq null_value
mov r5,r1
mov r1,#8192
sub r1,r1,#4
sub r1,r1,r5
mov r1,r1,lsr #2 ;r1 is ready to work as y coordinate
mov r0,#4
ldr r2,=blank
swi 0x204
mov r1,r5
null_value:
str r3,[r1]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;displaying the value on the screen at appropriate place
neg_or_pos:
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr r6,[sp],#4
ldr r5,[sp],#4
ldr r3,[sp],#4
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
cmp r3,#0
blt disp_neg
mov r5,r1
mov r1,#8192
sub r1,r1,#4
sub r1,r1,r5
mov r1,r1,lsr #2 ;r1 is ready to work as y coordinate
mov r0,#5
mov r2,r3
swi 0x205
b end_program
disp_neg:
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
str r5,[sp,#-4]!
mov r5,r1
mov r1,#8192
sub r1,r1,#4
sub r1,r1,r5
mov r1,r1,lsr #2 ;r1 is ready to work as y coordinate
mov r2,#'-
mov r0,#4
swi 0x207
ldr r5,[sp],#4
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
mvn r2,r3
add r2,r2,#1
mov r5,r1
mov r1,#8192
sub r1,r1,#4
sub r1,r1,r5
mov r1,r1,lsr #2 ;r1 is ready to work as y coordinate
mov r0,#5
swi 0x205

end_program:
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr r6,[sp],#4
ldr r3,[sp],#4
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
;mov r0,#3
;swi 0x202
;cmp r0,#1
;beq back_to_starting 
;cmp r0,#2
;beq back_to_starting 
b back_to_starting 
swi 0x11

recall:
str lr,[sp,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
str r3,[sp,#-4]!
str r6,[sp,#-4]!
str r7,[sp,#-4]!
str r8,[sp,#-4]!
mov r1,#8192
ldr r2,[r1]
ldr r4,[r2]
mov r8,#129
mov r7,r8
mov r8,r8,lsl #8
add r8,r7,r8
mov r8,r8,lsl #8
add r8,r7,r8
mov r8,r8,lsl #8
add r8,r7,r8
cmp r4,r8
beq null_access
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr r6,[sp],#4
ldr r3,[sp],#4
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
ldr lr,[sp],#4
mov pc ,lr



priority:
str lr,[sp,#-4]!
cmp r5,#0xdfffffff
bne prior_2
mov r5,#4
ldr lr,[sp],#4
mov pc ,lr
prior_2:
cmp r5,#0xbfffffff
bne prior_3
;mov r5,#3
mov r5,#4
ldr lr,[sp],#4
mov pc ,lr
prior_3:
cmp r5,#0xefffffff
bne prior_4
mov r5,#2
ldr lr,[sp],#4
mov pc ,lr
prior_4:
cmp r5,#0xf7ffffff
bne prior_5
;mov r5,#1
mov r5,#2
ldr lr,[sp],#4
mov pc ,lr
prior_5:
mov r5,#0
ldr lr,[sp],#4
mov pc ,lr

evaluateexp:
str lr,[sp,#-4]!
cmp r6,#0xbfffffff
bne exp2
adds r6,r7,r8
bvs overflowerr
b endevex
exp2:
cmp r6,#0xdfffffff
bne exp3
subs r6,r7,r8
bvs overflowerr
b endevex
exp3:
cmp r6,#0xefffffff
bne exp4
bl multip
;mul r6,r7,r8
multip_ret:
b endevex
exp4:
bl div
endevex:
ldr lr,[sp],#4
mov pc ,lr


multip:
str lr,[sp,#-4]!
str r7,[sp,#-4]!
str r8,[sp,#-4]!
str r9,[sp,#-4]!
mov r6,#0
cmp r7,#0
blt g1
cmp r8,#0
blt g4
g5:
adds r6,r6,r7
sub r8,r8,#1
bvs overflowerr
cmp r8,#0
bne g5
ldr r9,[sp],#4
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr lr,[sp],#4
mov pc,lr
g4:
mov r9,r7
mov r7,r8
mov r8,r9
b g5
g1:
cmp r8,#0
blt g2
g3:
b g5 
g2:
mov r9,#-1
mul r7,r9,r7
mul r8,r9,r8
b g5
ldr r9,[sp],#4
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr lr,[sp],#4
mov pc,lr


div:
str lr,[sp,#-4]!
str r7,[sp,#-4]!
str r8,[sp,#-4]!
cmp r8,#0
beq overflowerr

mov r9,#-1
str r9,[sp,#-4]!
str r7,[sp,#-4]!
str r8,[sp,#-4]!
mov r7,r7,lsr #31
mov r8,r8,lsr #31
eor r5,r7,r8
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr r9,[sp],#4
cmp r8,#0
blt divloop1
b nextdivloop
divloop1:
mul r8,r9,r8
nextdivloop:
cmp r7,#0
blt divloop2
b nextthing
divloop2:
mul r7,r9,r7
nextthing:
mov r6,#0

while_div:
cmp r7,r8
blt divexit1
add r6,r6,#1
sub r7,r7,r8
b while_div
beq divexit1
divexit1:
cmp r5,#0
beq divexit
mul r6,r9,r6
divexit:
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr lr,[sp],#4
mov pc,lr

set8seg:

str lr,[sp,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]!
str r2,[sp,#-4]!
str r3,[sp,#-4]!
str r6,[sp,#-4]!
str r7,[sp,#-4]!
str r8,[sp,#-4]!
mov r0,#8192
sub r0,r0,#4
cmp r0,r5
bne nextseg2
mov r0,#237
swi 0x200
b end_set8seg
nextseg2:
sub r0,r0,#4
cmp r0,r5
bne nextseg3
mov r0,#96
swi 0x200
b end_set8seg
nextseg3:
sub r0,r0,#4
cmp r0,r5
bne nextseg4
mov r0,#206
swi 0x200
b end_set8seg
nextseg4:
sub r0,r0,#4
cmp r0,r5
bne nextseg5
mov r0,#234
swi 0x200
b end_set8seg
nextseg5:
sub r0,r0,#4
cmp r0,r5
bne nextseg6
mov r0,#99
swi 0x200
b end_set8seg
nextseg6:
sub r0,r0,#4
cmp r0,r5
bne nextseg7
mov r0,#171
swi 0x200
b end_set8seg
nextseg7:
sub r0,r0,#4
cmp r0,r5
bne nextseg8
mov r0,#175
swi 0x200
b end_set8seg
nextseg8:
sub r0,r0,#4
cmp r0,r5
bne nextseg9
mov r0,#224
swi 0x200
b end_set8seg
nextseg9:
sub r0,r0,#4
cmp r0,r5
bne nextseg10
mov r0,#239
swi 0x200
b end_set8seg
nextseg10:
sub r0,r0,#4
cmp r0,r5
bne nextseg11
mov r0,#227
swi 0x200
b end_set8seg
nextseg11:
end_set8seg:
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr r6,[sp],#4
ldr r3,[sp],#4
ldr r2,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
ldr lr,[sp],#4
mov pc ,lr

no_of_digit:
str lr,[sp,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]! 
str r5,[sp,#-4]!
str r6,[sp,#-4]!
str r7,[sp,#-4]!
str r8,[sp,#-4]!
str r9,[sp,#-4]!
mov r7,r2
mov r8,#10
mov r4,#0
repeat_nod:
add r4,r4,#1
bl div
mov r7,r6
cmp r6,#0
bne repeat_nod
ldr r9,[sp],#4
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr r6,[sp],#4
ldr r5,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
ldr lr,[sp],#4
mov pc,lr

no_of_digit_neg:
str lr,[sp,#-4]!
str r0,[sp,#-4]!
str r1,[sp,#-4]! 
str r5,[sp,#-4]!
str r6,[sp,#-4]!
str r7,[sp,#-4]!
str r8,[sp,#-4]!
str r9,[sp,#-4]!
mov r6,#-1
mul r2,r6,r2

mov r7,r2
mov r8,#10
mov r4,#1
repeat_nod_neg:
add r4,r4,#1
bl div
mov r7,r6
cmp r6,#0
bne repeat_nod_neg
ldr r9,[sp],#4
ldr r8,[sp],#4
ldr r7,[sp],#4
ldr r6,[sp],#4
ldr r5,[sp],#4
ldr r1,[sp],#4
ldr r0,[sp],#4
ldr lr,[sp],#4
mov pc,lr

overflowerr:
mov r0,#1
swi 0x201
swi 0x11
b back_to_starting

null_access:
mov r0,#2
swi 0x201
swi 0x11
b back_to_starting
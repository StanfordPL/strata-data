  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movswl %bx, %r11d   #  1     0     4      OPC=movswl_r32_r16   
  cmpw %bx, %ax       #  2     0x4   3      OPC=cmpw_r16_r16     
  cmovew %cx, %bx     #  3     0x7   4      OPC=cmovew_r16_r16   
  cmovnew %r11w, %ax  #  4     0xb   5      OPC=cmovnew_r16_r16  
  retq                #  5     0x10  1      OPC=retq             
                                                                 
.size target, .-target

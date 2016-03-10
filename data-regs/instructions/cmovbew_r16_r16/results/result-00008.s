  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  movzwq %cx, %r11     #  1     0    4      OPC=movzwq_r64_r16   
  cmovbel %r11d, %ebx  #  2     0x4  4      OPC=cmovbel_r32_r32  
  movzbq %cl, %rcx     #  3     0x8  4      OPC=movzbq_r64_r8    
  xaddb %ch, %bh       #  4     0xc  3      OPC=xaddb_rh_rh      
  retq                 #  5     0xf  1      OPC=retq             
                                                                 
.size target, .-target

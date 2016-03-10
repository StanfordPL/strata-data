  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  movl %ecx, %r13d     #  1     0    3      OPC=movl_r32_r32     
  clc                  #  2     0x3  1      OPC=clc              
  setnae %al           #  3     0x4  3      OPC=setnae_r8        
  cmovnzl %r13d, %ebx  #  4     0x7  4      OPC=cmovnzl_r32_r32  
  xaddb %al, %bh       #  5     0xb  3      OPC=xaddb_rh_r8      
  retq                 #  6     0xe  1      OPC=retq             
                                                                 
.size target, .-target

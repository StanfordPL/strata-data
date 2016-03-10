  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  orl %ecx, %edx           #  1     0    2      OPC=orl_r32_r32      
  callq .read_cf_into_rbx  #  2     0x2  5      OPC=callq_label      
  xorl %edx, %ecx          #  3     0x7  2      OPC=xorl_r32_r32     
  cmovnzl %ecx, %ebx       #  4     0x9  3      OPC=cmovnzl_r32_r32  
  retq                     #  5     0xc  1      OPC=retq             
                                                                     
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  orl %ecx, %edx                     #  1     0     2      OPC=orl_r32_r32   
  callq .move_032_016_edx_r12w_r13w  #  2     0x2   5      OPC=callq_label   
  callq .move_016_032_r12w_r13w_ebx  #  3     0x7   5      OPC=callq_label   
  xorl %ecx, %ebx                    #  4     0xc   2      OPC=xorl_r32_r32  
  xorl %edx, %ecx                    #  5     0xe   2      OPC=xorl_r32_r32  
  retq                               #  6     0x10  1      OPC=retq          
                                                                             
.size target, .-target

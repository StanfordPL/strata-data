  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  xorl %ecx, %edx          #  1     0    2      OPC=xorl_r32_r32  
  orl %ecx, %edx           #  2     0x2  2      OPC=orl_r32_r32   
  xorl %ecx, %edx          #  3     0x4  2      OPC=xorl_r32_r32  
  callq .read_cf_into_rbx  #  4     0x6  5      OPC=callq_label   
  addl %edx, %ebx          #  5     0xb  2      OPC=addl_r32_r32  
  retq                     #  6     0xd  1      OPC=retq          
                                                                  
.size target, .-target

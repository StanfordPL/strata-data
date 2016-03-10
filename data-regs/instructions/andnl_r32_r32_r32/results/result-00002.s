  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  orl %ecx, %edx           #  1     0    2      OPC=orl_r32_r32    
  xorl %ecx, %edx          #  2     0x2  2      OPC=xorl_r32_r32   
  callq .read_cf_into_rbx  #  3     0x4  5      OPC=callq_label    
  xchgl %ebx, %edx         #  4     0x9  2      OPC=xchgl_r32_r32  
  retq                     #  5     0xb  1      OPC=retq           
                                                                   
.size target, .-target

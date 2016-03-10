  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  xorl %ecx, %ecx     #  1     0    2      OPC=xorl_r32_r32     
  subq %rbx, %rcx     #  2     0x2  3      OPC=subq_r64_r64     
  cmovneq %rcx, %rbx  #  3     0x5  4      OPC=cmovneq_r64_r64  
  retq                #  4     0x9  1      OPC=retq             
                                                                
.size target, .-target

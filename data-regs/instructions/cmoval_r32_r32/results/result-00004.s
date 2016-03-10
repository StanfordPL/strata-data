  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  seta %r8b           #  1     0    4      OPC=seta_r8          
  negb %r8b           #  2     0x4  3      OPC=negb_r8          
  movslq %ecx, %rcx   #  3     0x7  3      OPC=movslq_r64_r32   
  cmovnel %ecx, %ebx  #  4     0xa  3      OPC=cmovnel_r32_r32  
  retq                #  5     0xd  1      OPC=retq             
                                                                
.size target, .-target

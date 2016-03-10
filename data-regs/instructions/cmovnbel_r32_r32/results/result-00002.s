  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  seta %dil           #  1     0    4      OPC=seta_r8          
  orl %ecx, %ecx      #  2     0x4  2      OPC=orl_r32_r32      
  negb %dil           #  3     0x6  3      OPC=negb_r8          
  cmovnel %ecx, %ebx  #  4     0x9  3      OPC=cmovnel_r32_r32  
  retq                #  5     0xc  1      OPC=retq             
                                                                
.size target, .-target

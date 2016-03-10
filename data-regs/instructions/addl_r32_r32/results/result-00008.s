  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  popcntw %cx, %r12w  #  1     0    6      OPC=popcntw_r16_r16  
  adcl %ecx, %ebx     #  2     0x6  2      OPC=adcl_r32_r32     
  retq                #  3     0x8  1      OPC=retq             
                                                                
.size target, .-target

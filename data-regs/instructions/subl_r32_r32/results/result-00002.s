  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  popcntw %bx, %r14w  #  1     0    6      OPC=popcntw_r16_r16  
  sbbl %ecx, %ebx     #  2     0x6  2      OPC=sbbl_r32_r32     
  retq                #  3     0x8  1      OPC=retq             
                                                                
.size target, .-target

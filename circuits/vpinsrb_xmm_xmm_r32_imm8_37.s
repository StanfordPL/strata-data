  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                  
.target:                             #        0    0      OPC=<label>             
  vmaxss %xmm2, %xmm2, %xmm1         #  1     0    4      OPC=vmaxss_xmm_xmm_xmm  
  movw %bx, %r9w                     #  2     0x4  4      OPC=movw_r16_r16        
  callq .move_r9b_to_byte_5_of_ymm1  #  3     0x8  5      OPC=callq_label         
  retq                               #  4     0xd  1      OPC=retq                
                                                                                  
.size target, .-target

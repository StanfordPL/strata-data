  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  movzwl %bx, %r8d                   #  1     0    4      OPC=movzwl_r32_r16   
  vmovaps %xmm2, %xmm1               #  2     0x4  4      OPC=vmovaps_xmm_xmm  
  callq .move_r8b_to_byte_4_of_ymm1  #  3     0x8  5      OPC=callq_label      
  retq                               #  4     0xd  1      OPC=retq             
                                                                               
.size target, .-target

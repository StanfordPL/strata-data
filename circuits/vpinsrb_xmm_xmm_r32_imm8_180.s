  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode               
.target:                             #        0    0      OPC=<label>          
  vmovups %xmm2, %xmm1               #  1     0    4      OPC=vmovups_xmm_xmm  
  movzwq %bx, %r9                    #  2     0x4  4      OPC=movzwq_r64_r16   
  callq .move_r9b_to_byte_4_of_ymm1  #  3     0x8  5      OPC=callq_label      
  retq                               #  4     0xd  1      OPC=retq             
                                                                               
.size target, .-target

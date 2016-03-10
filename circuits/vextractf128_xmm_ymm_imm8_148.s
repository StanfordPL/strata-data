  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode               
.target:                              #        0    0      OPC=<label>          
  callq .move_byte_28_of_ymm1_to_r8b  #  1     0    5      OPC=callq_label      
  callq .move_r8b_to_byte_21_of_ymm1  #  2     0x5  5      OPC=callq_label      
  vmovaps %xmm1, %xmm1                #  3     0xa  4      OPC=vmovaps_xmm_xmm  
  retq                                #  4     0xe  1      OPC=retq             
                                                                                
.size target, .-target

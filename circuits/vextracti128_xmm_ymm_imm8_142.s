  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode               
.target:                              #        0    0      OPC=<label>          
  callq .move_byte_17_of_ymm1_to_r9b  #  1     0    5      OPC=callq_label      
  callq .move_r9b_to_byte_23_of_ymm1  #  2     0x5  5      OPC=callq_label      
  vmovups %xmm1, %xmm1                #  3     0xa  4      OPC=vmovups_xmm_xmm  
  retq                                #  4     0xe  1      OPC=retq             
                                                                                
.size target, .-target

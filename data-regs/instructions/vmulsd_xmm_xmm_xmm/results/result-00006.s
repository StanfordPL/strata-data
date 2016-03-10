  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  vmovdqu %xmm2, %xmm1                #  1     0     4      OPC=vmovdqu_xmm_xmm  
  callq .move_byte_29_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label      
  callq .move_r9b_to_byte_16_of_ymm1  #  3     0x9   5      OPC=callq_label      
  mulsd %xmm3, %xmm1                  #  4     0xe   4      OPC=mulsd_xmm_xmm    
  retq                                #  5     0x12  1      OPC=retq             
                                                                                 
.size target, .-target

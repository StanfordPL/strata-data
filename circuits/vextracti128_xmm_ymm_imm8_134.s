  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  callq .move_256_128_ymm1_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  callq .move_byte_21_of_ymm1_to_r9b  #  2     0x5   5      OPC=callq_label        
  callq .move_r9b_to_byte_30_of_ymm1  #  3     0xa   5      OPC=callq_label        
  vorpd %xmm8, %xmm1, %xmm1           #  4     0xf   5      OPC=vorpd_xmm_xmm_xmm  
  retq                                #  5     0x14  1      OPC=retq               
                                                                                   
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  vpxor %xmm3, %xmm2, %xmm1           #  1     0     4      OPC=vpxor_xmm_xmm_xmm  
  callq .move_byte_21_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label        
  vpand %xmm3, %xmm1, %xmm1           #  3     0x9   4      OPC=vpand_xmm_xmm_xmm  
  callq .move_r9b_to_byte_16_of_ymm1  #  4     0xd   5      OPC=callq_label        
  retq                                #  5     0x12  1      OPC=retq               
                                                                                   
.size target, .-target

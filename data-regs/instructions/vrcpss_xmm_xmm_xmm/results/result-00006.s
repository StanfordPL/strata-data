  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r12_r13    #  1     0     5      OPC=callq_label        
  vpxor %xmm3, %xmm2, %xmm1           #  2     0x5   4      OPC=vpxor_xmm_xmm_xmm  
  callq .move_byte_10_of_ymm1_to_r9b  #  3     0x9   5      OPC=callq_label        
  callq .move_064_128_r12_r13_xmm1    #  4     0xe   5      OPC=callq_label        
  callq .move_r9b_to_byte_0_of_ymm1   #  5     0x13  5      OPC=callq_label        
  rcpss %xmm3, %xmm1                  #  6     0x18  4      OPC=rcpss_xmm_xmm      
  retq                                #  7     0x1c  1      OPC=retq               
                                                                                   
.size target, .-target

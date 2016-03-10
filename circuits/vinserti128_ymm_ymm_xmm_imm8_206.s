  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                   
.target:                             #        0     0      OPC=<label>              
  callq .move_128_064_xmm3_r8_r9     #  1     0     5      OPC=callq_label          
  vpmovsxdq %xmm2, %ymm1             #  2     0x5   5      OPC=vpmovsxdq_ymm_xmm    
  vsqrtsd %xmm2, %xmm1, %xmm8        #  3     0xa   4      OPC=vsqrtsd_xmm_xmm_xmm  
  vpsubd %ymm8, %ymm2, %ymm1         #  4     0xe   5      OPC=vpsubd_ymm_ymm_ymm   
  callq .move_064_128_r8_r9_xmm1     #  5     0x13  5      OPC=callq_label          
  callq .move_r8b_to_byte_0_of_ymm1  #  6     0x18  5      OPC=callq_label          
  retq                               #  7     0x1d  1      OPC=retq                 
                                                                                    
.size target, .-target

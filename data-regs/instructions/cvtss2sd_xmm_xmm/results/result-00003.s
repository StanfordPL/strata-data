  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                 
.target:                               #        0     0      OPC=<label>            
  callq .move_byte_15_of_ymm1_to_r9b   #  1     0     5      OPC=callq_label        
  callq .move_r9b_to_byte_15_of_ymm1   #  2     0x5   5      OPC=callq_label        
  callq .move_128_64_xmm1_xmm10_xmm11  #  3     0xa   5      OPC=callq_label        
  vcvtps2pd %xmm2, %ymm10              #  4     0xf   4      OPC=vcvtps2pd_ymm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label        
  retq                                 #  6     0x18  1      OPC=retq               
                                                                                    
.size target, .-target

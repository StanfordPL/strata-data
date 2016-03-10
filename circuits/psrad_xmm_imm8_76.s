  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  vcvtdq2ps %xmm1, %xmm3              #  1     0     4      OPC=vcvtdq2ps_xmm_xmm    
  vpmovsxdq %xmm3, %ymm8              #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm    
  vhaddps %ymm8, %ymm8, %ymm5         #  3     0x9   5      OPC=vhaddps_ymm_ymm_ymm  
  vsubps %ymm5, %ymm5, %ymm3          #  4     0xe   4      OPC=vsubps_ymm_ymm_ymm   
  callq .move_256_128_ymm3_xmm8_xmm9  #  5     0x12  5      OPC=callq_label          
  callq .move_64_128_xmm8_xmm9_xmm1   #  6     0x17  5      OPC=callq_label          
  retq                                #  7     0x1c  1      OPC=retq                 
                                                                                     
.size target, .-target

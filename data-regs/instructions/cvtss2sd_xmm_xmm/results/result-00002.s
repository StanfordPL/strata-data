  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                 
.target:                               #        0    0      OPC=<label>            
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0    5      OPC=callq_label        
  vcvtps2pd %xmm2, %ymm10              #  2     0x5  4      OPC=vcvtps2pd_ymm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  3     0x9  5      OPC=callq_label        
  retq                                 #  4     0xe  1      OPC=retq               
                                                                                   
.size target, .-target

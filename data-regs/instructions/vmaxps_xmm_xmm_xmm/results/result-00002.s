  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  callq .move_128_64_xmm3_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  vcvtps2pd %xmm11, %xmm1              #  2     0x5   5      OPC=vcvtps2pd_xmm_xmm   
  vmovapd %xmm2, %xmm0                 #  3     0xa   4      OPC=vmovapd_xmm_xmm     
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label         
  vmaxps %ymm1, %ymm0, %ymm1           #  5     0x13  4      OPC=vmaxps_ymm_ymm_ymm  
  retq                                 #  6     0x17  1      OPC=retq                
                                                                                     
.size target, .-target

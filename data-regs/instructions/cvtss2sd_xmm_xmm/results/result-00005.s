  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vcvtps2pd %xmm2, %ymm8               #  1     0     4      OPC=vcvtps2pd_ymm_xmm   
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  vminps %ymm8, %ymm8, %ymm12          #  3     0x9   5      OPC=vminps_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target

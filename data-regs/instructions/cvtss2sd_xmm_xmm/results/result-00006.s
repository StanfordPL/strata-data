  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm8_xmm9             #  1     0     5      OPC=callq_label         
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label         
  vcvtps2pd %xmm4, %ymm12                       #  3     0xa   4      OPC=vcvtps2pd_ymm_xmm   
  vminps %ymm12, %ymm12, %ymm8                  #  4     0xe   5      OPC=vminps_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1             #  5     0x13  5      OPC=callq_label         
  retq                                          #  6     0x18  1      OPC=retq                
                                                                                              
.size target, .-target

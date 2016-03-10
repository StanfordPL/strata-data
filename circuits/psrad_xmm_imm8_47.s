  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm4             #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  vmovshdup %ymm4, %ymm12            #  2     0x5   4      OPC=vmovshdup_ymm_ymm  
  vorps %ymm4, %ymm12, %ymm6         #  3     0x9   4      OPC=vorps_ymm_ymm_ymm  
  vcvtpd2ps %ymm6, %xmm2             #  4     0xd   4      OPC=vcvtpd2ps_xmm_ymm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  5     0x11  5      OPC=callq_label        
  callq .move_64_128_xmm8_xmm9_xmm1  #  6     0x16  5      OPC=callq_label        
  retq                               #  7     0x1b  1      OPC=retq               
                                                                                  
.size target, .-target

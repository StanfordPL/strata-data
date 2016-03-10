  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vcvtps2pd %xmm2, %ymm7               #  1     0     4      OPC=vcvtps2pd_ymm_xmm   
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  vmaxpd %ymm7, %ymm7, %ymm11          #  3     0x9   4      OPC=vmaxpd_ymm_ymm_ymm  
  vmaxpd %ymm11, %ymm11, %ymm12        #  4     0xd   5      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x12  5      OPC=callq_label         
  retq                                 #  6     0x17  1      OPC=retq                
                                                                                     
.size target, .-target

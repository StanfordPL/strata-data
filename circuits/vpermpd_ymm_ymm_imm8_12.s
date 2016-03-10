  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                    
.target:                                #        0     0      OPC=<label>               
  vpbroadcastq %xmm2, %ymm1             #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vcvttps2dq %xmm1, %xmm8               #  2     0x5   4      OPC=vcvttps2dq_xmm_xmm    
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0x9   5      OPC=callq_label           
  vmovhlps %xmm11, %xmm8, %xmm14        #  4     0xe   5      OPC=vmovhlps_xmm_xmm_xmm  
  unpcklpd %xmm14, %xmm1                #  5     0x13  5      OPC=unpcklpd_xmm_xmm      
  retq                                  #  6     0x18  1      OPC=retq                  
                                                                                        
.size target, .-target

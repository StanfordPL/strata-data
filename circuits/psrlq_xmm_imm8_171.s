  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vxorpd %ymm1, %ymm1, %ymm15         #  1     0     4      OPC=vxorpd_ymm_ymm_ymm    
  vpbroadcastw %xmm15, %ymm9          #  2     0x4   5      OPC=vpbroadcastw_ymm_xmm  
  vminss %xmm9, %xmm9, %xmm8          #  3     0x9   5      OPC=vminss_xmm_xmm_xmm    
  callq .move_128_256_xmm8_xmm9_ymm2  #  4     0xe   5      OPC=callq_label           
  hsubpd %xmm2, %xmm1                 #  5     0x13  4      OPC=hsubpd_xmm_xmm        
  unpckhpd %xmm1, %xmm1               #  6     0x17  4      OPC=unpckhpd_xmm_xmm      
  retq                                #  7     0x1b  1      OPC=retq                  
                                                                                      
.size target, .-target

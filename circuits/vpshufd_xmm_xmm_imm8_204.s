  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpmovsxdq %xmm2, %ymm0            #  1     0     5      OPC=vpmovsxdq_ymm_xmm        
  vpmovsxwd %xmm0, %ymm10           #  2     0x5   5      OPC=vpmovsxwd_ymm_xmm        
  vmaxpd %xmm0, %xmm0, %xmm1        #  3     0xa   4      OPC=vmaxpd_xmm_xmm_xmm       
  vpunpckhqdq %xmm10, %xmm2, %xmm7  #  4     0xe   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovss %xmm1, %xmm7, %xmm7        #  5     0x13  4      OPC=vmovss_xmm_xmm_xmm       
  vpbroadcastq %xmm7, %xmm1         #  6     0x17  5      OPC=vpbroadcastq_xmm_xmm     
  retq                              #  7     0x1c  1      OPC=retq                     
                                                                                       
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm2, %xmm2, %xmm13  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpmovsxdq %xmm2, %ymm7            #  2     0x4   5      OPC=vpmovsxdq_ymm_xmm        
  vbroadcastss %xmm7, %ymm6         #  3     0x9   5      OPC=vbroadcastss_ymm_xmm     
  vmovddup %ymm13, %ymm1            #  4     0xe   5      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %xmm6, %xmm2, %xmm0   #  5     0x13  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovss %xmm1, %xmm0, %xmm7        #  6     0x17  4      OPC=vmovss_xmm_xmm_xmm       
  vmovups %xmm7, %xmm1              #  7     0x1b  4      OPC=vmovups_xmm_xmm          
  retq                              #  8     0x1f  1      OPC=retq                     
                                                                                       
.size target, .-target

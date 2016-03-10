  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  rsqrtss %xmm13, %xmm2                #  2     0x5   5      OPC=rsqrtss_xmm_xmm          
  vandps %xmm2, %xmm12, %xmm8          #  3     0xa   4      OPC=vandps_xmm_xmm_xmm       
  vmovshdup %ymm2, %ymm14              #  4     0xe   4      OPC=vmovshdup_ymm_ymm        
  vpunpckhqdq %ymm14, %ymm8, %ymm1     #  5     0x12  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpckhpd %ymm1, %ymm1, %ymm1        #  6     0x17  4      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                                 #  7     0x1b  1      OPC=retq                     
                                                                                          
.size target, .-target

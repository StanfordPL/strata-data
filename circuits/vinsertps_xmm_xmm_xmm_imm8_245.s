  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vpunpckldq %xmm9, %xmm2, %xmm7     #  2     0x5   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vxorps %ymm8, %ymm8, %ymm1         #  3     0xa   5      OPC=vxorps_ymm_ymm_ymm      
  vrcpps %ymm1, %ymm11               #  4     0xf   4      OPC=vrcpps_ymm_ymm          
  vpunpckhdq %xmm7, %xmm8, %xmm0     #  5     0x13  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vrcpss %xmm11, %xmm0, %xmm1        #  6     0x17  5      OPC=vrcpss_xmm_xmm_xmm      
  retq                               #  7     0x1c  1      OPC=retq                    
                                                                                       
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vmovss %xmm8, %xmm2, %xmm12        #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm      
  vpunpckhdq %xmm2, %xmm9, %xmm7     #  3     0xa   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movhlps %xmm9, %xmm7               #  4     0xe   4      OPC=movhlps_xmm_xmm         
  vandnps %ymm12, %ymm7, %ymm9       #  5     0x12  5      OPC=vandnps_ymm_ymm_ymm     
  vmovapd %ymm9, %ymm1               #  6     0x17  5      OPC=vmovapd_ymm_ymm         
  retq                               #  7     0x1c  1      OPC=retq                    
                                                                                       
.size target, .-target

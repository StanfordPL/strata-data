  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  vmovaps %xmm2, %xmm12              #  1     0     4      OPC=vmovaps_xmm_xmm         
  movhlps %xmm1, %xmm12              #  2     0x4   4      OPC=movhlps_xmm_xmm         
  vpunpckhdq %xmm2, %xmm1, %xmm8     #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpunpckldq %ymm12, %ymm8, %ymm0    #  4     0xc   5      OPC=vpunpckldq_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  5     0x11  5      OPC=callq_label             
  vunpckhpd %ymm12, %ymm0, %ymm9     #  6     0x16  5      OPC=vunpckhpd_ymm_ymm_ymm   
  callq .move_64_128_xmm8_xmm9_xmm1  #  7     0x1b  5      OPC=callq_label             
  retq                               #  8     0x20  1      OPC=retq                    
                                                                                       
.size target, .-target

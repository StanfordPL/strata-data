  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vmovshdup %xmm2, %xmm4             #  2     0x5   4      OPC=vmovshdup_xmm_xmm       
  vpunpckldq %xmm9, %xmm4, %xmm8     #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vpunpckldq %xmm8, %xmm9, %xmm14    #  4     0xe   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovupd %ymm8, %ymm15              #  5     0x13  5      OPC=vmovupd_ymm_ymm         
  vmovsd %xmm15, %xmm14, %xmm1       #  6     0x18  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                               #  7     0x1d  1      OPC=retq                    
                                                                                       
.size target, .-target

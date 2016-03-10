  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label             
  vsqrtss %xmm3, %xmm2, %xmm0          #  2     0x5   4      OPC=vsqrtss_xmm_xmm_xmm     
  vpunpckldq %xmm13, %xmm3, %xmm7      #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  vmaxps %ymm7, %ymm7, %ymm12          #  4     0xe   4      OPC=vmaxps_ymm_ymm_ymm      
  vmovhlps %xmm0, %xmm12, %xmm1        #  5     0x12  4      OPC=vmovhlps_xmm_xmm_xmm    
  retq                                 #  6     0x16  1      OPC=retq                    
                                                                                         
.size target, .-target

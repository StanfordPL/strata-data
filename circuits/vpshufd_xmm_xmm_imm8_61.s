  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovss %xmm10, %xmm11, %xmm5         #  2     0x5   5      OPC=vmovss_xmm_xmm_xmm      
  vpunpckldq %xmm5, %xmm2, %xmm7       #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckldq %xmm7, %xmm5               #  4     0xe   4      OPC=punpckldq_xmm_xmm       
  callq .move_128_64_xmm2_xmm10_xmm11  #  5     0x12  5      OPC=callq_label             
  paddd %xmm10, %xmm7                  #  6     0x17  5      OPC=paddd_xmm_xmm           
  vunpckhps %ymm5, %ymm7, %ymm1        #  7     0x1c  4      OPC=vunpckhps_ymm_ymm_ymm   
  retq                                 #  8     0x20  1      OPC=retq                    
                                                                                         
.size target, .-target

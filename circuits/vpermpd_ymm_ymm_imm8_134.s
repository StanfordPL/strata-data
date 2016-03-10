  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  callq .move_256_128_ymm2_xmm12_xmm13  #  1     0     5      OPC=callq_label              
  vpunpckhqdq %ymm2, %ymm2, %ymm6       #  2     0x5   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  unpcklpd %xmm6, %xmm13                #  3     0x9   5      OPC=unpcklpd_xmm_xmm         
  vmovaps %xmm13, %xmm10                #  4     0xe   5      OPC=vmovaps_xmm_xmm          
  vunpcklpd %xmm10, %xmm2, %xmm11       #  5     0x13  5      OPC=vunpcklpd_xmm_xmm_xmm    
  callq .move_128_256_xmm10_xmm11_ymm1  #  6     0x18  5      OPC=callq_label              
  retq                                  #  7     0x1d  1      OPC=retq                     
                                                                                           
.size target, .-target

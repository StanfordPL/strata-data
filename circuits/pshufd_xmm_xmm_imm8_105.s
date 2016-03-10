  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vpmovsxdq %xmm2, %ymm11           #  1     0     5      OPC=vpmovsxdq_ymm_xmm       
  punpckhdq %xmm2, %xmm11           #  2     0x5   5      OPC=punpckhdq_xmm_xmm       
  vpmovsxdq %xmm11, %ymm9           #  3     0xa   5      OPC=vpmovsxdq_ymm_xmm       
  vmovlhps %xmm11, %xmm2, %xmm13    #  4     0xf   5      OPC=vmovlhps_xmm_xmm_xmm    
  vpunpckhdq %xmm13, %xmm9, %xmm14  #  5     0x14  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movaps %xmm11, %xmm1              #  6     0x19  4      OPC=movaps_xmm_xmm          
  punpckldq %xmm14, %xmm1           #  7     0x1d  5      OPC=punpckldq_xmm_xmm       
  retq                              #  8     0x22  1      OPC=retq                    
                                                                                      
.size target, .-target

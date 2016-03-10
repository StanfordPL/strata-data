  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vunpcklps %xmm2, %xmm2, %xmm4     #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm   
  vmaxps %xmm3, %xmm3, %xmm11       #  2     0x4   4      OPC=vmaxps_xmm_xmm_xmm      
  vpbroadcastq %xmm3, %xmm14        #  3     0x8   5      OPC=vpbroadcastq_xmm_xmm    
  vpunpckhdq %ymm14, %ymm11, %ymm7  #  4     0xd   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovsd %xmm4, %xmm7, %xmm1        #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm      
  retq                              #  6     0x16  1      OPC=retq                    
                                                                                      
.size target, .-target

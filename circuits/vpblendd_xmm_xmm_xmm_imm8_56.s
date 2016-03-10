  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmaxps %xmm3, %xmm3, %xmm10     #  1     0     4      OPC=vmaxps_xmm_xmm_xmm      
  vmovhlps %xmm10, %xmm3, %xmm13  #  2     0x4   5      OPC=vmovhlps_xmm_xmm_xmm    
  vpunpckhdq %xmm3, %xmm2, %xmm6  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movss %xmm6, %xmm13             #  4     0xd   5      OPC=movss_xmm_xmm           
  movaps %xmm2, %xmm10            #  5     0x12  4      OPC=movaps_xmm_xmm          
  vandpd %xmm13, %xmm13, %xmm3    #  6     0x16  5      OPC=vandpd_xmm_xmm_xmm      
  vunpcklpd %xmm13, %xmm3, %xmm6  #  7     0x1b  5      OPC=vunpcklpd_xmm_xmm_xmm   
  vunpcklpd %ymm6, %ymm10, %ymm1  #  8     0x20  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                            #  9     0x24  1      OPC=retq                    
                                                                                    
.size target, .-target

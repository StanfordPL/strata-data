  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  movdqu %xmm2, %xmm0               #  1     0     4      OPC=movdqu_xmm_xmm           
  vunpckhpd %ymm3, %ymm2, %ymm10    #  2     0x4   4      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpcklqdq %xmm0, %xmm2, %xmm12  #  3     0x8   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vdivss %xmm10, %xmm2, %xmm4       #  4     0xc   5      OPC=vdivss_xmm_xmm_xmm       
  movhlps %xmm12, %xmm10            #  5     0x11  4      OPC=movhlps_xmm_xmm          
  unpckhpd %xmm4, %xmm3             #  6     0x15  4      OPC=unpckhpd_xmm_xmm         
  vunpcklpd %ymm3, %ymm10, %ymm1    #  7     0x19  4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                              #  8     0x1d  1      OPC=retq                     
                                                                                       
.size target, .-target

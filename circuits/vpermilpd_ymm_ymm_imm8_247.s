  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpmovsxwq %xmm2, %xmm11           #  1     0     5      OPC=vpmovsxwq_xmm_xmm        
  vpunpckhqdq %ymm11, %ymm2, %ymm6  #  2     0x5   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movhlps %xmm2, %xmm2              #  3     0xa   3      OPC=movhlps_xmm_xmm          
  vunpcklpd %ymm2, %ymm6, %ymm1     #  4     0xd   4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  orps %xmm3, %xmm3                 #  1     0    3      OPC=orps_xmm_xmm             
  vunpcklpd %ymm2, %ymm3, %ymm13    #  2     0x3  4      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm3, %ymm13, %ymm1  #  3     0x7  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  4     0xb  1      OPC=retq                     
                                                                                      
.size target, .-target

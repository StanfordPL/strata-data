  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vunpcklpd %ymm3, %ymm3, %ymm12    #  1     0    4      OPC=vunpcklpd_ymm_ymm_ymm    
  punpckhqdq %xmm3, %xmm12          #  2     0x4  5      OPC=punpckhqdq_xmm_xmm       
  vpunpckhqdq %ymm12, %ymm2, %ymm1  #  3     0x9  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target

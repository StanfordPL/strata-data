  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vunpcklpd %ymm2, %ymm2, %ymm12    #  1     0    4      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm12, %ymm2, %ymm1  #  2     0x4  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  3     0x9  1      OPC=retq                     
                                                                                      
.size target, .-target

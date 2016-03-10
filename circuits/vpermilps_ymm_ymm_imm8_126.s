  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm10  #  1     0    4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklps %ymm2, %ymm10, %ymm1    #  2     0x4  4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhqdq %ymm1, %ymm10, %ymm1  #  3     0x8  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  4     0xc  1      OPC=retq                     
                                                                                      
.size target, .-target

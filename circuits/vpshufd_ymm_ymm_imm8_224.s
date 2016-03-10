  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovsldup %ymm2, %ymm6            #  1     0    4      OPC=vmovsldup_ymm_ymm        
  vunpcklpd %ymm6, %ymm2, %ymm11    #  2     0x4  4      OPC=vunpcklpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm2, %ymm11, %ymm1  #  3     0x8  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  4     0xc  1      OPC=retq                     
                                                                                      
.size target, .-target

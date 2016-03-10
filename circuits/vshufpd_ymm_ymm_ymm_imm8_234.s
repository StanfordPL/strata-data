  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpand %ymm3, %ymm3, %ymm15        #  1     0    4      OPC=vpand_ymm_ymm_ymm        
  vpunpckhqdq %ymm15, %ymm3, %ymm5  #  2     0x4  5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpcklpd %ymm5, %ymm2, %ymm1     #  3     0x9  4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target

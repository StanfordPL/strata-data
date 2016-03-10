  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vunpcklpd %ymm2, %ymm2, %ymm7   #  1     0    4      OPC=vunpcklpd_ymm_ymm_ymm   
  vpunpckhdq %ymm2, %ymm7, %ymm1  #  2     0x4  4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovddup %ymm1, %ymm1           #  3     0x8  4      OPC=vmovddup_ymm_ymm        
  retq                            #  4     0xc  1      OPC=retq                    
                                                                                   
.size target, .-target

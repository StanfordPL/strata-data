  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm7          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm7, %ymm2, %ymm5  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovddup %ymm5, %ymm9           #  3     0x8   4      OPC=vmovddup_ymm_ymm        
  vunpcklps %ymm9, %ymm7, %ymm2   #  4     0xc   5      OPC=vunpcklps_ymm_ymm_ymm   
  vunpckhps %ymm2, %ymm5, %ymm1   #  5     0x11  4      OPC=vunpckhps_ymm_ymm_ymm   
  retq                            #  6     0x15  1      OPC=retq                    
                                                                                    
.size target, .-target

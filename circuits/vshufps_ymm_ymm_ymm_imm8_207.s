  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovddup %ymm3, %ymm9            #  1     0     4      OPC=vmovddup_ymm_ymm         
  vunpckhps %ymm2, %ymm2, %ymm2    #  2     0x4   4      OPC=vunpckhps_ymm_ymm_ymm    
  vmovsldup %ymm9, %ymm5           #  3     0x8   5      OPC=vmovsldup_ymm_ymm        
  vpunpckhdq %ymm3, %ymm5, %ymm7   #  4     0xd   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  vpunpckhqdq %ymm7, %ymm2, %ymm1  #  5     0x11  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target

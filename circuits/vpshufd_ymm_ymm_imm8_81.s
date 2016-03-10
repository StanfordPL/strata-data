  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm1   #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklps %ymm2, %ymm1, %ymm6    #  2     0x4   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckhdq %ymm6, %ymm1, %ymm14  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovaps %ymm14, %ymm1            #  4     0xc   5      OPC=vmovaps_ymm_ymm         
  retq                             #  5     0x11  1      OPC=retq                    
                                                                                     
.size target, .-target

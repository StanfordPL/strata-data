  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm0          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckldq %ymm0, %ymm2, %ymm6  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vpunpckhdq %ymm6, %ymm0, %ymm8  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vorps %ymm8, %ymm8, %ymm1       #  4     0xc   5      OPC=vorps_ymm_ymm_ymm       
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target

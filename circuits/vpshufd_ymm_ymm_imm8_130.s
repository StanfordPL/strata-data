  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovddup %ymm2, %ymm7             #  1     0     4      OPC=vmovddup_ymm_ymm        
  vpunpckhdq %ymm2, %ymm7, %ymm10   #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovshdup %ymm10, %ymm0           #  3     0x8   5      OPC=vmovshdup_ymm_ymm       
  vunpcklps %ymm7, %ymm0, %ymm12    #  4     0xd   4      OPC=vunpcklps_ymm_ymm_ymm   
  vpunpckldq %ymm10, %ymm12, %ymm1  #  5     0x11  5      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                              #  6     0x16  1      OPC=retq                    
                                                                                      
.size target, .-target

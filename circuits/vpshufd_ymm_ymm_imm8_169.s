  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovddup %ymm2, %ymm12            #  1     0     4      OPC=vmovddup_ymm_ymm        
  vmovsldup %ymm2, %ymm13           #  2     0x4   4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm13, %ymm12, %ymm6  #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vmovshdup %ymm13, %ymm13          #  4     0xd   5      OPC=vmovshdup_ymm_ymm       
  vpunpckhdq %ymm13, %ymm6, %ymm1   #  5     0x12  5      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                              #  6     0x17  1      OPC=retq                    
                                                                                      
.size target, .-target

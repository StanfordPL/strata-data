  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovddup %ymm2, %ymm5            #  1     0     4      OPC=vmovddup_ymm_ymm        
  vmovsldup %ymm2, %ymm2           #  2     0x4   4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm2, %ymm5, %ymm15  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckhdq %ymm5, %ymm15, %ymm1  #  4     0xc   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  retq                             #  5     0x10  1      OPC=retq                    
                                                                                     
.size target, .-target

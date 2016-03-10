  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovsldup %ymm2, %ymm10          #  1     0     4      OPC=vmovsldup_ymm_ymm       
  vpunpckhdq %ymm2, %ymm2, %ymm2   #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm2, %ymm10, %ymm3  #  3     0x8   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpckhpd %ymm3, %ymm2, %ymm0    #  4     0xc   4      OPC=vunpckhpd_ymm_ymm_ymm   
  vmovaps %ymm0, %ymm1             #  5     0x10  4      OPC=vmovaps_ymm_ymm         
  retq                             #  6     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target

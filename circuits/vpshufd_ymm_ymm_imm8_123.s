  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm8           #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vpunpckhdq %ymm2, %ymm8, %ymm13  #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm8, %ymm13, %ymm5  #  3     0x8   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklpd %ymm5, %ymm13, %ymm14  #  4     0xd   4      OPC=vunpcklpd_ymm_ymm_ymm   
  vmovaps %ymm14, %ymm1            #  5     0x11  5      OPC=vmovaps_ymm_ymm         
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target

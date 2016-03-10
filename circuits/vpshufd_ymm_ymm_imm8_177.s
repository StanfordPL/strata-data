  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm4          #  1     0     4      OPC=vmovshdup_ymm_ymm       
  movdqu %xmm2, %xmm2             #  2     0x4   4      OPC=movdqu_xmm_xmm          
  vpunpckhdq %ymm2, %ymm4, %ymm1  #  3     0x8   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm2, %ymm4, %ymm8  #  4     0xc   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklpd %ymm1, %ymm8, %ymm1   #  5     0x10  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                            #  6     0x14  1      OPC=retq                    
                                                                                    
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  movdqa %xmm3, %xmm2               #  1     0     4      OPC=movdqa_xmm_xmm          
  vmovshdup %ymm2, %ymm13           #  2     0x4   4      OPC=vmovshdup_ymm_ymm       
  vpunpckhdq %ymm13, %ymm3, %ymm5   #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm13, %ymm3, %ymm12  #  4     0xd   5      OPC=vpunpckldq_ymm_ymm_ymm  
  vunpcklpd %ymm5, %ymm12, %ymm1    #  5     0x12  4      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                              #  6     0x16  1      OPC=retq                    
                                                                                      
.size target, .-target

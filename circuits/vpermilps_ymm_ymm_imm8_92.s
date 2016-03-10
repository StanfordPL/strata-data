  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovddup %ymm2, %ymm14            #  1     0     4      OPC=vmovddup_ymm_ymm        
  vmovshdup %ymm2, %ymm12           #  2     0x4   4      OPC=vmovshdup_ymm_ymm       
  vpunpckhdq %ymm12, %ymm14, %ymm8  #  3     0x8   5      OPC=vpunpckhdq_ymm_ymm_ymm  
  vunpcklpd %ymm12, %ymm8, %ymm1    #  4     0xd   5      OPC=vunpcklpd_ymm_ymm_ymm   
  retq                              #  5     0x12  1      OPC=retq                    
                                                                                      
.size target, .-target

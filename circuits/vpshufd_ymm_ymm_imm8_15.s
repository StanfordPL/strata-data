  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpunpckldq %ymm2, %ymm2, %ymm5  #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm  
  vmovddup %ymm5, %ymm9           #  2     0x4   4      OPC=vmovddup_ymm_ymm        
  vunpckhpd %ymm9, %ymm2, %ymm4   #  3     0x8   5      OPC=vunpckhpd_ymm_ymm_ymm   
  vmovshdup %ymm4, %ymm1          #  4     0xd   4      OPC=vmovshdup_ymm_ymm       
  retq                            #  5     0x11  1      OPC=retq                    
                                                                                    
.size target, .-target

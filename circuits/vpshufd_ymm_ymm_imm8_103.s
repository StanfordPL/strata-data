  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vmovshdup %ymm2, %ymm8          #  1     0     4      OPC=vmovshdup_ymm_ymm       
  vmovapd %ymm8, %ymm5            #  2     0x4   5      OPC=vmovapd_ymm_ymm         
  vpunpckhdq %ymm2, %ymm8, %ymm3  #  3     0x9   4      OPC=vpunpckhdq_ymm_ymm_ymm  
  vpunpckldq %ymm5, %ymm3, %ymm9  #  4     0xd   4      OPC=vpunpckldq_ymm_ymm_ymm  
  vmaxps %ymm9, %ymm9, %ymm1      #  5     0x11  5      OPC=vmaxps_ymm_ymm_ymm      
  retq                            #  6     0x16  1      OPC=retq                    
                                                                                    
.size target, .-target

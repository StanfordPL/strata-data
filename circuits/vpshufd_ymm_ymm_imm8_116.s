  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmaxps %ymm2, %ymm2, %ymm3        #  1     0     4      OPC=vmaxps_ymm_ymm_ymm      
  vmovshdup %ymm2, %ymm15           #  2     0x4   4      OPC=vmovshdup_ymm_ymm       
  vunpcklpd %ymm2, %ymm3, %ymm5     #  3     0x8   4      OPC=vunpcklpd_ymm_ymm_ymm   
  vunpckhps %ymm15, %ymm5, %ymm10   #  4     0xc   5      OPC=vunpckhps_ymm_ymm_ymm   
  vpunpckldq %ymm15, %ymm10, %ymm1  #  5     0x11  5      OPC=vpunpckldq_ymm_ymm_ymm  
  retq                              #  6     0x16  1      OPC=retq                    
                                                                                      
.size target, .-target

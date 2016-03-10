  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm14  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckldq %ymm2, %ymm14, %ymm9   #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpckhps %ymm2, %ymm9, %ymm12    #  3     0x8   4      OPC=vunpckhps_ymm_ymm_ymm    
  vunpcklpd %ymm9, %ymm2, %ymm13    #  4     0xc   5      OPC=vunpcklpd_ymm_ymm_ymm    
  vunpckhps %ymm13, %ymm12, %ymm1   #  5     0x11  5      OPC=vunpckhps_ymm_ymm_ymm    
  retq                              #  6     0x16  1      OPC=retq                     
                                                                                       
.size target, .-target

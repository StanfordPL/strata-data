  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vunpcklps %ymm2, %ymm2, %ymm13    #  1     0     4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckhdq %ymm13, %ymm2, %ymm10  #  2     0x4   5      OPC=vpunpckhdq_ymm_ymm_ymm   
  vunpckhpd %ymm13, %ymm10, %ymm8   #  3     0x9   5      OPC=vunpckhpd_ymm_ymm_ymm    
  vpunpckhqdq %ymm8, %ymm10, %ymm1  #  4     0xe   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                              #  5     0x13  1      OPC=retq                     
                                                                                       
.size target, .-target

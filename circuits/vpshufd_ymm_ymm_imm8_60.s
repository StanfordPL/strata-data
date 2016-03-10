  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm3  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckldq %ymm2, %ymm2, %ymm15  #  2     0x4   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpcklps %ymm2, %ymm3, %ymm9    #  3     0x8   4      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckldq %ymm3, %ymm15, %ymm8  #  4     0xc   4      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckldq %ymm9, %ymm3, %ymm2   #  5     0x10  5      OPC=vpunpckldq_ymm_ymm_ymm   
  vunpckhpd %ymm2, %ymm8, %ymm1    #  6     0x15  4      OPC=vunpckhpd_ymm_ymm_ymm    
  retq                             #  7     0x19  1      OPC=retq                     
                                                                                      
.size target, .-target

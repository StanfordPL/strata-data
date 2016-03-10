  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckldq %ymm2, %ymm2, %ymm8   #  1     0     4      OPC=vpunpckldq_ymm_ymm_ymm   
  vpunpckhqdq %ymm2, %ymm8, %ymm0  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovapd %ymm2, %ymm9             #  3     0x8   4      OPC=vmovapd_ymm_ymm          
  vunpcklps %ymm9, %ymm0, %ymm9    #  4     0xc   5      OPC=vunpcklps_ymm_ymm_ymm    
  vpunpckldq %ymm9, %ymm0, %ymm1   #  5     0x11  5      OPC=vpunpckldq_ymm_ymm_ymm   
  retq                             #  6     0x16  1      OPC=retq                     
                                                                                      
.size target, .-target

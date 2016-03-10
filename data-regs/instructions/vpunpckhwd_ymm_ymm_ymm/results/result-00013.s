  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovapd %ymm2, %ymm1             #  1     0     4      OPC=vmovapd_ymm_ymm          
  vpunpckhqdq %ymm2, %ymm1, %ymm6  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpckhqdq %ymm3, %ymm3, %ymm2  #  3     0x8   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpunpcklwd %ymm2, %ymm6, %ymm1   #  4     0xc   4      OPC=vpunpcklwd_ymm_ymm_ymm   
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target

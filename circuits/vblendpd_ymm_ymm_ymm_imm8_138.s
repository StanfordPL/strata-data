  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpsubd %ymm3, %ymm3, %ymm9       #  1     0     4      OPC=vpsubd_ymm_ymm_ymm       
  vpunpckhqdq %ymm9, %ymm3, %ymm7  #  2     0x4   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovups %ymm7, %ymm8             #  3     0x9   4      OPC=vmovups_ymm_ymm          
  vunpcklpd %ymm8, %ymm2, %ymm1    #  4     0xd   5      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target

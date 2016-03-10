  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm6  #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovapd %ymm2, %ymm0             #  2     0x4   4      OPC=vmovapd_ymm_ymm          
  movupd %xmm0, %xmm6              #  3     0x8   4      OPC=movupd_xmm_xmm           
  vunpcklpd %ymm2, %ymm6, %ymm1    #  4     0xc   4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target

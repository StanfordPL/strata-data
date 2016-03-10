  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovq %xmm2, %xmm1               #  1     0     4      OPC=vmovq_xmm_xmm            
  vpunpckhqdq %ymm1, %ymm3, %ymm3  #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovddup %ymm2, %ymm13           #  3     0x8   4      OPC=vmovddup_ymm_ymm         
  vunpcklpd %ymm3, %ymm13, %ymm1   #  4     0xc   4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target

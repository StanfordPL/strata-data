  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovdqu %ymm2, %ymm8             #  1     0     4      OPC=vmovdqu_ymm_ymm          
  movss %xmm3, %xmm8               #  2     0x4   5      OPC=movss_xmm_xmm            
  vmovddup %ymm8, %ymm4            #  3     0x9   5      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm3, %ymm4, %ymm1  #  4     0xe   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target

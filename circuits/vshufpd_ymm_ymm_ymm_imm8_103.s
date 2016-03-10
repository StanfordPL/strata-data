  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movhlps %xmm3, %xmm3             #  1     0     3      OPC=movhlps_xmm_xmm          
  vmovddup %ymm3, %ymm9            #  2     0x3   4      OPC=vmovddup_ymm_ymm         
  maxps %xmm3, %xmm9               #  3     0x7   4      OPC=maxps_xmm_xmm            
  vpunpckhqdq %ymm9, %ymm2, %ymm1  #  4     0xb   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  retq                             #  5     0x10  1      OPC=retq                     
                                                                                      
.size target, .-target

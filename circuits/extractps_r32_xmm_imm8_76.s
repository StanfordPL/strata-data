  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP   Bytes  Opcode                    
.target:                     #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm5  #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  vbroadcastss %xmm5, %xmm0  #  2     0x5   5      OPC=vbroadcastss_xmm_xmm  
  vmovq %xmm0, %xmm0         #  3     0xa   4      OPC=vmovq_xmm_xmm         
  movd %xmm0, %ebx           #  4     0xe   4      OPC=movd_r32_xmm          
  retq                       #  5     0x12  1      OPC=retq                  
                                                                             
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movapd %xmm2, %xmm12         #  1     0     5      OPC=movapd_xmm_xmm      
  vpaddd %xmm12, %xmm2, %xmm0  #  2     0x5   5      OPC=vpaddd_xmm_xmm_xmm  
  vpaddd %xmm0, %xmm0, %xmm3   #  3     0xa   4      OPC=vpaddd_xmm_xmm_xmm  
  vmovdqu %ymm3, %ymm6         #  4     0xe   4      OPC=vmovdqu_ymm_ymm     
  vandpd %ymm6, %ymm6, %ymm1   #  5     0x12  4      OPC=vandpd_ymm_ymm_ymm  
  retq                         #  6     0x16  1      OPC=retq                
                                                                             
.size target, .-target

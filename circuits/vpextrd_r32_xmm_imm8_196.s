  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  movsldup %xmm1, %xmm13       #  1     0     5      OPC=movsldup_xmm_xmm      
  vpbroadcastd %xmm13, %xmm10  #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm  
  vmovupd %ymm10, %ymm12       #  3     0xa   5      OPC=vmovupd_ymm_ymm       
  vmovd %xmm12, %ebx           #  4     0xf   4      OPC=vmovd_r32_xmm         
  retq                         #  5     0x13  1      OPC=retq                  
                                                                               
.size target, .-target

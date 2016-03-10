  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  vmovups %xmm2, %xmm8                #  1     0     4      OPC=vmovups_xmm_xmm  
  vmovapd %xmm3, %xmm9                #  2     0x4   4      OPC=vmovapd_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm2  #  3     0x8   5      OPC=callq_label      
  vmovups %ymm2, %ymm1                #  4     0xd   4      OPC=vmovups_ymm_ymm  
  retq                                #  5     0x11  1      OPC=retq             
                                                                                 
.size target, .-target

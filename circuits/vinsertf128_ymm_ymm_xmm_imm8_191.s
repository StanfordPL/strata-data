  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode               
.target:                              #        0    0      OPC=<label>          
  vmovups %xmm3, %xmm9                #  1     0    4      OPC=vmovups_xmm_xmm  
  vmovapd %ymm2, %ymm8                #  2     0x4  4      OPC=vmovapd_ymm_ymm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  3     0x8  5      OPC=callq_label      
  retq                                #  4     0xd  1      OPC=retq             
                                                                                
.size target, .-target

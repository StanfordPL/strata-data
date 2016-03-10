  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode               
.target:                              #        0    0      OPC=<label>          
  callq .move_256_128_ymm3_xmm8_xmm9  #  1     0    5      OPC=callq_label      
  vmovaps %xmm9, %xmm3                #  2     0x5  5      OPC=vmovaps_xmm_xmm  
  vmovapd %xmm3, %xmm1                #  3     0xa  4      OPC=vmovapd_xmm_xmm  
  retq                                #  4     0xe  1      OPC=retq             
                                                                                
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label      
  vmovupd %xmm3, %xmm9                #  2     0x5   4      OPC=vmovupd_xmm_xmm  
  vmovups %xmm8, %xmm12               #  3     0x9   5      OPC=vmovups_xmm_xmm  
  callq .move_128_256_xmm8_xmm9_ymm1  #  4     0xe   5      OPC=callq_label      
  minss %xmm12, %xmm1                 #  5     0x13  5      OPC=minss_xmm_xmm    
  retq                                #  6     0x18  1      OPC=retq             
                                                                                 
.size target, .-target

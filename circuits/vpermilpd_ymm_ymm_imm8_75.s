  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP  Bytes  Opcode               
.target:                               #        0    0      OPC=<label>          
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0    5      OPC=callq_label      
  movsd %xmm13, %xmm2                  #  2     0x5  5      OPC=movsd_xmm_xmm    
  vmovups %ymm2, %ymm1                 #  3     0xa  4      OPC=vmovups_ymm_ymm  
  retq                                 #  4     0xe  1      OPC=retq             
                                                                                 
.size target, .-target

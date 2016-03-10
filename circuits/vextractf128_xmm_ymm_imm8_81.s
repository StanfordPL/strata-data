  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                 
.target:                              #        0    0      OPC=<label>            
  vmovups %ymm1, %ymm3                #  1     0    4      OPC=vmovups_ymm_ymm    
  callq .move_256_128_ymm3_xmm8_xmm9  #  2     0x4  5      OPC=callq_label        
  vorps %xmm9, %xmm9, %xmm1           #  3     0x9  5      OPC=vorps_xmm_xmm_xmm  
  retq                                #  4     0xe  1      OPC=retq               
                                                                                  
.size target, .-target

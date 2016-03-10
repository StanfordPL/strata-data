  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vmovss %xmm2, %xmm1, %xmm12        #  1     0     4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4   5      OPC=callq_label         
  vmovups %ymm12, %ymm8              #  3     0x9   5      OPC=vmovups_ymm_ymm     
  callq .move_64_128_xmm8_xmm9_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                               #  5     0x13  1      OPC=retq                
                                                                                   
.size target, .-target

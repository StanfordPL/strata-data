  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vpand %xmm3, %xmm3, %xmm9             #  1     0     4      OPC=vpand_xmm_xmm_xmm   
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  vmaxps %ymm9, %ymm9, %ymm13           #  3     0x9   5      OPC=vmaxps_ymm_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xe   5      OPC=callq_label         
  retq                                  #  5     0x13  1      OPC=retq                
                                                                                      
.size target, .-target

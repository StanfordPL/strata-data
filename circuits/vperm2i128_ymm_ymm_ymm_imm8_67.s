  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmaxss %xmm2, %xmm2, %xmm13           #  1     0     4      OPC=vmaxss_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm8_xmm9    #  2     0x4   5      OPC=callq_label         
  vpand %xmm9, %xmm9, %xmm12            #  3     0x9   5      OPC=vpand_xmm_xmm_xmm   
  callq .move_128_256_xmm12_xmm13_ymm1  #  4     0xe   5      OPC=callq_label         
  retq                                  #  5     0x13  1      OPC=retq                
                                                                                      
.size target, .-target

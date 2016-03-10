  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                  
.target:                          #        0    0      OPC=<label>             
  callq .move_128_064_xmm3_r8_r9  #  1     0    5      OPC=callq_label         
  vmaxps %ymm2, %ymm2, %ymm1      #  2     0x5  4      OPC=vmaxps_ymm_ymm_ymm  
  callq .move_064_128_r8_r9_xmm1  #  3     0x9  5      OPC=callq_label         
  retq                            #  4     0xe  1      OPC=retq                
                                                                               
.size target, .-target

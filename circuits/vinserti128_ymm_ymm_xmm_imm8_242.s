  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP  Bytes  Opcode                  
.target:                                          #        0    0      OPC=<label>             
  vmaxps %ymm2, %ymm2, %ymm1                      #  1     0    4      OPC=vmaxps_ymm_ymm_ymm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4  5      OPC=callq_label         
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  3     0x9  5      OPC=callq_label         
  retq                                            #  4     0xe  1      OPC=retq                
                                                                                               
.size target, .-target

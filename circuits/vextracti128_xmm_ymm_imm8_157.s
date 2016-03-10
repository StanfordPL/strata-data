  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                  
.target:                                #        0    0      OPC=<label>             
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0    5      OPC=callq_label         
  callq .move_256_128_ymm1_xmm8_xmm9    #  2     0x5  5      OPC=callq_label         
  vminsd %xmm11, %xmm9, %xmm1           #  3     0xa  5      OPC=vminsd_xmm_xmm_xmm  
  retq                                  #  4     0xf  1      OPC=retq                
                                                                                     
.size target, .-target

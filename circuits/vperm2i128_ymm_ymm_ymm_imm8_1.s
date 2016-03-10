  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode              
.target:                                #        0     0      OPC=<label>         
  callq .move_256_128_ymm2_xmm8_xmm9    #  1     0     5      OPC=callq_label     
  movdqu %xmm8, %xmm9                   #  2     0x5   5      OPC=movdqu_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  3     0xa   5      OPC=callq_label     
  callq .move_128_256_xmm8_xmm9_ymm1    #  4     0xf   5      OPC=callq_label     
  movups %xmm11, %xmm1                  #  5     0x14  4      OPC=movups_xmm_xmm  
  retq                                  #  6     0x18  1      OPC=retq            
                                                                                  
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_256_128_ymm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  callq .move_128_256_xmm8_xmm9_ymm1  #  2     0x5   5      OPC=callq_label         
  vminps %xmm3, %xmm3, %xmm11         #  3     0xa   4      OPC=vminps_xmm_xmm_xmm  
  movdqa %xmm11, %xmm1                #  4     0xe   5      OPC=movdqa_xmm_xmm      
  retq                                #  5     0x13  1      OPC=retq                
                                                                                    
.size target, .-target

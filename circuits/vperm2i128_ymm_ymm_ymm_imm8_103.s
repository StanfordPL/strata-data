  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  callq .move_256_128_ymm3_xmm12_xmm13  #  1     0     5      OPC=callq_label         
  callq .move_128_256_xmm12_xmm13_ymm3  #  2     0x5   5      OPC=callq_label         
  callq .move_256_128_ymm3_xmm8_xmm9    #  3     0xa   5      OPC=callq_label         
  vminpd %xmm8, %xmm12, %xmm13          #  4     0xf   5      OPC=vminpd_xmm_xmm_xmm  
  callq .move_128_256_xmm12_xmm13_ymm1  #  5     0x14  5      OPC=callq_label         
  movdqa %xmm9, %xmm1                   #  6     0x19  5      OPC=movdqa_xmm_xmm      
  retq                                  #  7     0x1e  1      OPC=retq                
                                                                                      
.size target, .-target

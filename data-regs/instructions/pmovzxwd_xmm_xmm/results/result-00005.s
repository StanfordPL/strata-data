  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vpmovzxwd %xmm2, %xmm7            #  1     0     5      OPC=vpmovzxwd_xmm_xmm   
  vpmovzxwd %xmm2, %xmm13           #  2     0x5   5      OPC=vpmovzxwd_xmm_xmm   
  vminpd %ymm7, %ymm13, %ymm2       #  3     0xa   4      OPC=vminpd_ymm_ymm_ymm  
  callq .move_128_064_xmm2_r10_r11  #  4     0xe   5      OPC=callq_label         
  callq .move_064_128_r10_r11_xmm1  #  5     0x13  5      OPC=callq_label         
  retq                              #  6     0x18  1      OPC=retq                
                                                                                  
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vpmovzxwd %xmm2, %xmm1                          #  1     0     5      OPC=vpmovzxwd_xmm_xmm   
  vpmovzxwd %xmm1, %ymm3                          #  2     0x5   5      OPC=vpmovzxwd_ymm_xmm   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label         
  vaddps %ymm3, %ymm1, %ymm1                      #  4     0xf   4      OPC=vaddps_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1               #  5     0x13  5      OPC=callq_label         
  retq                                            #  6     0x18  1      OPC=retq                
                                                                                                
.size target, .-target

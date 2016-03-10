  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vpmovzxwq %xmm1, %ymm6                          #  1     0     5      OPC=vpmovzxwq_ymm_xmm   
  vsubpd %ymm6, %ymm6, %ymm4                      #  2     0x5   4      OPC=vsubpd_ymm_ymm_ymm  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label         
  haddpd %xmm4, %xmm11                            #  4     0xe   5      OPC=haddpd_xmm_xmm      
  punpckhdq %xmm11, %xmm9                         #  5     0x13  5      OPC=punpckhdq_xmm_xmm   
  movupd %xmm9, %xmm1                             #  6     0x18  5      OPC=movupd_xmm_xmm      
  retq                                            #  7     0x1d  1      OPC=retq                
                                                                                                
.size target, .-target

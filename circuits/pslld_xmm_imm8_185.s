  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label          
  vpmovzxbq %xmm8, %xmm9                          #  2     0x5   5      OPC=vpmovzxbq_xmm_xmm    
  vandnpd %ymm9, %ymm9, %ymm9                     #  3     0xa   5      OPC=vandnpd_ymm_ymm_ymm  
  movupd %xmm9, %xmm1                             #  4     0xf   5      OPC=movupd_xmm_xmm       
  retq                                            #  5     0x14  1      OPC=retq                 
                                                                                                 
.size target, .-target

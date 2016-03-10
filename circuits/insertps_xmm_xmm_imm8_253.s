  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  vpmovzxbq %xmm1, %xmm3                          #  1     0     5      OPC=vpmovzxbq_xmm_xmm    
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label          
  vsqrtss %xmm9, %xmm1, %xmm4                     #  3     0xa   5      OPC=vsqrtss_xmm_xmm_xmm  
  vmovss %xmm4, %xmm4, %xmm10                     #  4     0xf   4      OPC=vmovss_xmm_xmm_xmm   
  callq .move_64_128_xmm10_xmm11_xmm1             #  5     0x13  5      OPC=callq_label          
  retq                                            #  6     0x18  1      OPC=retq                 
                                                                                                 
.size target, .-target

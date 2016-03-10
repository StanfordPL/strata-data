  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  punpckhdq %xmm2, %xmm11                         #  2     0x5   5      OPC=punpckhdq_xmm_xmm   
  vpmovzxdq %xmm11, %xmm8                         #  3     0xa   5      OPC=vpmovzxdq_xmm_xmm   
  vpmovzxdq %xmm8, %ymm8                          #  4     0xf   5      OPC=vpmovzxdq_ymm_xmm   
  vmovss %xmm8, %xmm2, %xmm14                     #  5     0x14  5      OPC=vmovss_xmm_xmm_xmm  
  vmovups %ymm14, %ymm1                           #  6     0x19  5      OPC=vmovups_ymm_ymm     
  retq                                            #  7     0x1e  1      OPC=retq                
                                                                                                
.size target, .-target

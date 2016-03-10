  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vpmovzxdq %xmm3, %xmm14              #  1     0     5      OPC=vpmovzxdq_xmm_xmm       
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  vpunpckldq %xmm11, %xmm10, %xmm8     #  3     0xa   5      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckhdq %xmm8, %xmm14              #  4     0xf   5      OPC=punpckhdq_xmm_xmm       
  vmovaps %ymm14, %ymm1                #  5     0x14  5      OPC=vmovaps_ymm_ymm         
  retq                                 #  6     0x19  1      OPC=retq                    
                                                                                         
.size target, .-target

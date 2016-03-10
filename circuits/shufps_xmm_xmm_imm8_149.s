  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vpmovzxdq %xmm2, %xmm5               #  1     0     5      OPC=vpmovzxdq_xmm_xmm       
  vpunpckhdq %xmm2, %xmm5, %xmm13      #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovshdup %xmm1, %xmm12              #  3     0x9   4      OPC=vmovshdup_xmm_xmm       
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xd   5      OPC=callq_label             
  retq                                 #  5     0x12  1      OPC=retq                    
                                                                                         
.size target, .-target

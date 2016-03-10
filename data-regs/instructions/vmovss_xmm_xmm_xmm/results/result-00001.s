  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vmovdqu %xmm2, %xmm1                          #  1     0     4      OPC=vmovdqu_xmm_xmm    
  vpmovzxdq %xmm3, %xmm3                        #  2     0x4   5      OPC=vpmovzxdq_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label        
  vmovdqu %ymm3, %ymm4                          #  4     0xe   4      OPC=vmovdqu_ymm_ymm    
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label        
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target

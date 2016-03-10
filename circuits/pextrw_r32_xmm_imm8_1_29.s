  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9             #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm9, %ymm3                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label        
  punpckhdq %xmm6, %xmm3                        #  4     0xf   4      OPC=punpckhdq_xmm_xmm  
  vmovd %xmm3, %ebx                             #  5     0x13  4      OPC=vmovd_r32_xmm      
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target

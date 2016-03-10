  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vmovsldup %xmm1, %xmm3                        #  1     0     4      OPC=vmovsldup_xmm_xmm  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label        
  vpmovzxwq %xmm6, %xmm5                        #  3     0x9   5      OPC=vpmovzxwq_xmm_xmm  
  movq %xmm5, %rbx                              #  4     0xe   5      OPC=movq_r64_xmm       
  retq                                          #  5     0x13  1      OPC=retq               
                                                                                             
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm7, %ymm1                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  punpckhdq %xmm6, %xmm1                        #  3     0xa   4      OPC=punpckhdq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9                #  4     0xe   5      OPC=callq_label        
  movzwq %r8w, %rbx                             #  5     0x13  4      OPC=movzwq_r64_r16     
  retq                                          #  6     0x17  1      OPC=retq               
                                                                                             
.size target, .-target

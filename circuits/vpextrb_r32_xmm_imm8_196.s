  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  vpmovzxbq %xmm5, %xmm1                        #  2     0x5   5      OPC=vpmovzxbq_xmm_xmm  
  callq .move_byte_0_of_ymm1_to_r8b             #  3     0xa   5      OPC=callq_label        
  movzbq %r8b, %rbx                             #  4     0xf   4      OPC=movzbq_r64_r8      
  retq                                          #  5     0x13  1      OPC=retq               
                                                                                             
.size target, .-target

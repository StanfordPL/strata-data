  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_byte_13_of_ymm1_to_r9b            #  1     0     5      OPC=callq_label        
  callq .move_r9b_to_byte_1_of_ymm1             #  2     0x5   5      OPC=callq_label        
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label        
  vpmovzxwq %xmm7, %xmm9                        #  4     0xf   5      OPC=vpmovzxwq_xmm_xmm  
  vmovq %xmm9, %rbx                             #  5     0x14  5      OPC=vmovq_r64_xmm      
  retq                                          #  6     0x19  1      OPC=retq               
                                                                                             
.size target, .-target

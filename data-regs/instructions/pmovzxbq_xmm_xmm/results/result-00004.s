  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  vpmovzxbq %xmm2, %xmm2            #  1     0     5      OPC=vpmovzxbq_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x5   5      OPC=callq_label        
  movzbl %r12b, %r12d               #  3     0xa   4      OPC=movzbl_r32_r8      
  callq .move_064_128_r12_r13_xmm1  #  4     0xe   5      OPC=callq_label        
  retq                              #  5     0x13  1      OPC=retq               
                                                                                 
.size target, .-target

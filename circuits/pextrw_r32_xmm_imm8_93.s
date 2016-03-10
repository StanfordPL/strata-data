  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vpmovzxwq %xmm6, %xmm2                        #  2     0x5   5      OPC=vpmovzxwq_xmm_xmm   
  punpckhqdq %xmm1, %xmm2                       #  3     0xa   4      OPC=punpckhqdq_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13              #  4     0xe   5      OPC=callq_label         
  movzwq %r12w, %rbx                            #  5     0x13  4      OPC=movzwq_r64_r16      
  retq                                          #  6     0x17  1      OPC=retq                
                                                                                              
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm5, %xmm2                         #  2     0x5   5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13              #  3     0xa   5      OPC=callq_label       
  movzwq %r13w, %rbx                            #  4     0xf   4      OPC=movzwq_r64_r16    
  retq                                          #  5     0x13  1      OPC=retq              
                                                                                            
.size target, .-target

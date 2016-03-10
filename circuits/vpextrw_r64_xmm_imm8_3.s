  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  pmovzxwd %xmm1, %xmm1                         #  1     0     5      OPC=pmovzxwd_xmm_xmm  
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label       
  movq %xmm7, %r13                              #  3     0xa   5      OPC=movq_r64_xmm      
  movzwq %r13w, %rbx                            #  4     0xf   4      OPC=movzwq_r64_r16    
  retq                                          #  5     0x13  1      OPC=retq              
                                                                                            
.size target, .-target

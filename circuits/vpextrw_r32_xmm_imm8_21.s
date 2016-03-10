  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  movdqa %xmm1, %xmm11                          #  1     0     5      OPC=movdqa_xmm_xmm           
  vpunpckhqdq %xmm11, %xmm11, %xmm2             #  2     0x5   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  pmovzxwq %xmm2, %xmm2                         #  3     0xa   5      OPC=pmovzxwq_xmm_xmm         
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  4     0xf   5      OPC=callq_label              
  movzwq %r12w, %rbx                            #  5     0x14  4      OPC=movzwq_r64_r16           
  retq                                          #  6     0x18  1      OPC=retq                     
                                                                                                   
.size target, .-target

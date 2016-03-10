  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  pmovzxbq %xmm1, %xmm2                         #  1     0     5      OPC=pmovzxbq_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label       
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0xa   5      OPC=callq_label       
  movq %xmm6, %rbx                              #  4     0xf   5      OPC=movq_r64_xmm      
  xaddw %bx, %r10w                              #  5     0x14  5      OPC=xaddw_r16_r16     
  retq                                          #  6     0x19  1      OPC=retq              
                                                                                            
.size target, .-target

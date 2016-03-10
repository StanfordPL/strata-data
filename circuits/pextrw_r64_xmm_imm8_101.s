  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                
.target:                                        #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm6, %xmm3                         #  2     0x5   5      OPC=pmovzxwq_xmm_xmm  
  xorq %rbx, %rbx                               #  3     0xa   3      OPC=xorq_r64_r64      
  callq .move_128_064_xmm3_r10_r11              #  4     0xd   5      OPC=callq_label       
  xchgw %r11w, %bx                              #  5     0x12  4      OPC=xchgw_r16_r16     
  retq                                          #  6     0x16  1      OPC=retq              
                                                                                            
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vmovss %xmm6, %xmm1, %xmm3                    #  2     0x5   4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  3     0x9   5      OPC=callq_label         
  movzbq %r13b, %rbx                            #  4     0xe   4      OPC=movzbq_r64_r8       
  retq                                          #  5     0x12  1      OPC=retq                
                                                                                              
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vmaxpd %xmm1, %xmm1, %xmm3                      #  1     0     4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  pmovzxwq %xmm11, %xmm3                          #  3     0x9   6      OPC=pmovzxwq_xmm_xmm    
  callq .move_128_064_xmm3_r12_r13                #  4     0xf   5      OPC=callq_label         
  movzwq %r13w, %rbx                              #  5     0x14  4      OPC=movzwq_r64_r16      
  retq                                            #  6     0x18  1      OPC=retq                
                                                                                                
.size target, .-target

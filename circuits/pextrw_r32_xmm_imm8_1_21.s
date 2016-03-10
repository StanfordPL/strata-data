  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm10, %xmm3                          #  2     0x5   6      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9                  #  3     0xb   5      OPC=callq_label       
  movq %r9, %rbx                                  #  4     0x10  3      OPC=movq_r64_r64      
  retq                                            #  5     0x13  1      OPC=retq              
                                                                                              
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  pmovzxdq %xmm11, %xmm11                         #  2     0x5   6      OPC=pmovzxdq_xmm_xmm  
  movq %xmm11, %rbx                               #  3     0xb   5      OPC=movq_r64_xmm      
  retq                                            #  4     0x10  1      OPC=retq              
                                                                                              
.size target, .-target

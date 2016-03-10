  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label       
  pmovzxwq %xmm5, %xmm5                         #  2     0x5  5      OPC=pmovzxwq_xmm_xmm  
  movq %xmm5, %rbx                              #  3     0xa  5      OPC=movq_r64_xmm      
  retq                                          #  4     0xf  1      OPC=retq              
                                                                                           
.size target, .-target

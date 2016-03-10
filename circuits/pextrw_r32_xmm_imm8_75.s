  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                
.target:                          #        0     0      OPC=<label>           
  movshdup %xmm1, %xmm1           #  1     0     4      OPC=movshdup_xmm_xmm  
  pmovzxwq %xmm1, %xmm2           #  2     0x4   5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  3     0x9   5      OPC=callq_label       
  movq %r9, %rbx                  #  4     0xe   3      OPC=movq_r64_r64      
  retq                            #  5     0x11  1      OPC=retq              
                                                                              
.size target, .-target

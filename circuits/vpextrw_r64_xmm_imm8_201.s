  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  pmovzxwq %xmm1, %xmm3             #  1     0     5      OPC=pmovzxwq_xmm_xmm  
  callq .move_128_064_xmm3_r12_r13  #  2     0x5   5      OPC=callq_label       
  movzbq %r13b, %rbx                #  3     0xa   4      OPC=movzbq_r64_r8     
  xaddq %rbx, %r13                  #  4     0xe   4      OPC=xaddq_r64_r64     
  retq                              #  5     0x12  1      OPC=retq              
                                                                                
.size target, .-target

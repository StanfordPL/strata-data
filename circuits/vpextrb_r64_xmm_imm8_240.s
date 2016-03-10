  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                
.target:                          #        0    0      OPC=<label>           
  pmovzxbq %xmm1, %xmm1           #  1     0    5      OPC=pmovzxbq_xmm_xmm  
  callq .move_128_064_xmm1_r8_r9  #  2     0x5  5      OPC=callq_label       
  movq %r8, %rbx                  #  3     0xa  3      OPC=movq_r64_r64      
  retq                            #  4     0xd  1      OPC=retq              
                                                                             
.size target, .-target

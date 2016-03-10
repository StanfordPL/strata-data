  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label       
  pmovzxwq %xmm9, %xmm1              #  2     0x5   6      OPC=pmovzxwq_xmm_xmm  
  movq %xmm1, %rbx                   #  3     0xb   5      OPC=movq_r64_xmm      
  retq                               #  4     0x10  1      OPC=retq              
                                                                                 
.size target, .-target

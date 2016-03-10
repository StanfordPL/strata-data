  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                               #  Line  RIP  Bytes  Opcode                
.target:                             #        0    0      OPC=<label>           
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0    5      OPC=callq_label       
  vmovddup %xmm9, %xmm12             #  2     0x5  5      OPC=vmovddup_xmm_xmm  
  movq %xmm12, %rbx                  #  3     0xa  5      OPC=movq_r64_xmm      
  retq                               #  4     0xf  1      OPC=retq              
                                                                                
.size target, .-target

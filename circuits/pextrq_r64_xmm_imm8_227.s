  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                  
.target:                               #        0    0      OPC=<label>             
  callq .move_128_64_xmm1_xmm12_xmm13  #  1     0    5      OPC=callq_label         
  vmaxps %xmm13, %xmm13, %xmm6         #  2     0x5  5      OPC=vmaxps_xmm_xmm_xmm  
  movq %xmm6, %rbx                     #  3     0xa  5      OPC=movq_r64_xmm        
  retq                                 #  4     0xf  1      OPC=retq                
                                                                                    
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                
.target:                             #        0    0      OPC=<label>           
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0    5      OPC=callq_label       
  pmovzxdq %xmm8, %xmm2              #  2     0x5  6      OPC=pmovzxdq_xmm_xmm  
  movsd %xmm2, %xmm1                 #  3     0xb  4      OPC=movsd_xmm_xmm     
  retq                               #  4     0xf  1      OPC=retq              
                                                                                
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label       
  vmovddup %xmm9, %xmm1              #  2     0x5   5      OPC=vmovddup_xmm_xmm  
  movss %xmm1, %xmm2                 #  3     0xa   4      OPC=movss_xmm_xmm     
  unpcklps %xmm2, %xmm1              #  4     0xe   3      OPC=unpcklps_xmm_xmm  
  retq                               #  5     0x11  1      OPC=retq              
                                                                                 
.size target, .-target

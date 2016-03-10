  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                
.target:                             #        0    0      OPC=<label>           
  unpcklpd %xmm2, %xmm1              #  1     0    4      OPC=unpcklpd_xmm_xmm  
  callq .move_128_64_xmm2_xmm8_xmm9  #  2     0x4  5      OPC=callq_label       
  movlhps %xmm9, %xmm1               #  3     0x9  4      OPC=movlhps_xmm_xmm   
  retq                               #  4     0xd  1      OPC=retq              
                                                                                
.size target, .-target

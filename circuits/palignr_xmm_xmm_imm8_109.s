  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode                
.target:                                        #        0    0      OPC=<label>           
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label       
  unpckhps %xmm7, %xmm6                         #  2     0x5  3      OPC=unpckhps_xmm_xmm  
  cvtps2pd %xmm6, %xmm1                         #  3     0x8  3      OPC=cvtps2pd_xmm_xmm  
  retq                                          #  4     0xb  1      OPC=retq              
                                                                                           
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP  Bytes  Opcode               
.target:                                        #        0    0      OPC=<label>          
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0    5      OPC=callq_label      
  movhlps %xmm7, %xmm1                          #  2     0x5  3      OPC=movhlps_xmm_xmm  
  movlhps %xmm5, %xmm1                          #  3     0x8  3      OPC=movlhps_xmm_xmm  
  retq                                          #  4     0xb  1      OPC=retq             
                                                                                          
.size target, .-target

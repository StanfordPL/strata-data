  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label      
  callq .move_064_128_r12_r13_xmm2  #  2     0x5   5      OPC=callq_label      
  movlhps %xmm2, %xmm2              #  3     0xa   3      OPC=movlhps_xmm_xmm  
  vmovupd %xmm2, %xmm1              #  4     0xd   4      OPC=vmovupd_xmm_xmm  
  retq                              #  5     0x11  1      OPC=retq             
                                                                               
.size target, .-target

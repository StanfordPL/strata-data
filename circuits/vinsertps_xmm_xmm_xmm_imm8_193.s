  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  callq .move_128_064_xmm2_r8_r9                #  2     0x5   5      OPC=callq_label         
  vxorps %xmm2, %xmm4, %xmm1                    #  3     0xa   4      OPC=vxorps_xmm_xmm_xmm  
  callq .move_064_128_r8_r9_xmm2                #  4     0xe   5      OPC=callq_label         
  retq                                          #  5     0x13  1      OPC=retq                
                                                                                              
.size target, .-target

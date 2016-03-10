  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label         
  vxorps %xmm4, %xmm2, %xmm1                    #  2     0x5   4      OPC=vxorps_xmm_xmm_xmm  
  vpmovzxdq %xmm3, %xmm4                        #  3     0x9   5      OPC=vpmovzxdq_xmm_xmm   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                                          #  5     0x13  1      OPC=retq                
                                                                                              
.size target, .-target

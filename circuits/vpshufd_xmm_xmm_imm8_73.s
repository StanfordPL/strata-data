  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  callq .move_128_064_xmm2_r8_r9                  #  2     0x5   5      OPC=callq_label           
  vmovaps %xmm9, %xmm5                            #  3     0xa   5      OPC=vmovaps_xmm_xmm       
  callq .move_064_128_r8_r9_xmm2                  #  4     0xf   5      OPC=callq_label           
  punpckldq %xmm10, %xmm5                         #  5     0x14  5      OPC=punpckldq_xmm_xmm     
  vmovlhps %xmm2, %xmm5, %xmm1                    #  6     0x19  4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                            #  7     0x1d  1      OPC=retq                  
                                                                                                  
.size target, .-target

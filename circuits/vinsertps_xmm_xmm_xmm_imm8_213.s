  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vunpckhps %xmm3, %xmm10, %xmm1                  #  2     0x5   4      OPC=vunpckhps_xmm_xmm_xmm   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  3     0x9   5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm5, %xmm5                  #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpckhqdq %xmm5, %xmm1                         #  5     0x12  4      OPC=punpckhqdq_xmm_xmm      
  retq                                            #  6     0x16  1      OPC=retq                    
                                                                                                    
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  callq .move_128_64_xmm1_xmm8_xmm9             #  1     0     5      OPC=callq_label         
  movss %xmm2, %xmm1                            #  2     0x5   4      OPC=movss_xmm_xmm       
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x9   5      OPC=callq_label         
  vmovss %xmm6, %xmm9, %xmm4                    #  4     0xe   4      OPC=vmovss_xmm_xmm_xmm  
  movlhps %xmm4, %xmm1                          #  5     0x12  3      OPC=movlhps_xmm_xmm     
  retq                                          #  6     0x15  1      OPC=retq                
                                                                                              
.size target, .-target

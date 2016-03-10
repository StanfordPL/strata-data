  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7    #  1     0     5      OPC=callq_label              
  vpaddq %xmm3, %xmm3, %xmm1                      #  2     0x5   4      OPC=vpaddq_xmm_xmm_xmm       
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x9   5      OPC=callq_label              
  vfmsub213sd %xmm6, %xmm9, %xmm10                #  4     0xe   5      OPC=vfmsub213sd_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label              
  retq                                            #  6     0x18  1      OPC=retq                     
                                                                                                     
.size target, .-target

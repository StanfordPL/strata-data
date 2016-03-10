  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  unpcklps %xmm3, %xmm2                           #  1     0     3      OPC=unpcklps_xmm_xmm      
  andnpd %xmm3, %xmm3                             #  2     0x3   4      OPC=andnpd_xmm_xmm        
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x7   5      OPC=callq_label           
  vpbroadcastq %xmm3, %xmm1                       #  4     0xc   5      OPC=vpbroadcastq_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x11  5      OPC=callq_label           
  retq                                            #  6     0x16  1      OPC=retq                  
                                                                                                  
.size target, .-target

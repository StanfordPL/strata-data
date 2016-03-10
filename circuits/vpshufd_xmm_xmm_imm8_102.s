  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_064_xmm2_r10_r11                #  1     0     5      OPC=callq_label       
  callq .move_064_128_r10_r11_xmm1                #  2     0x5   5      OPC=callq_label       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  3     0xa   5      OPC=callq_label       
  unpcklps %xmm9, %xmm10                          #  4     0xf   4      OPC=unpcklps_xmm_xmm  
  vmovddup %xmm10, %xmm1                          #  5     0x13  5      OPC=vmovddup_xmm_xmm  
  retq                                            #  6     0x18  1      OPC=retq              
                                                                                              
.size target, .-target

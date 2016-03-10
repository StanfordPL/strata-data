  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm10, %xmm14                     #  2     0x5   5      OPC=vpbroadcastd_xmm_xmm  
  vpbroadcastd %xmm2, %ymm6                       #  3     0xa   5      OPC=vpbroadcastd_ymm_xmm  
  unpcklps %xmm6, %xmm2                           #  4     0xf   3      OPC=unpcklps_xmm_xmm      
  vmovhlps %xmm14, %xmm2, %xmm1                   #  5     0x12  5      OPC=vmovhlps_xmm_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq                  
                                                                                                  
.size target, .-target

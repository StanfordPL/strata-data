  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vmovapd %xmm11, %xmm15               #  2     0x5   5      OPC=vmovapd_xmm_xmm       
  punpckldq %xmm15, %xmm11             #  3     0xa   5      OPC=punpckldq_xmm_xmm     
  unpcklps %xmm2, %xmm11               #  4     0xf   4      OPC=unpcklps_xmm_xmm      
  vpbroadcastq %xmm11, %xmm1           #  5     0x13  5      OPC=vpbroadcastq_xmm_xmm  
  retq                                 #  6     0x18  1      OPC=retq                  
                                                                                       
.size target, .-target

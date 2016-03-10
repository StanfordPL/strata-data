  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label              
  vpbroadcastd %xmm6, %ymm0                     #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm     
  unpcklps %xmm0, %xmm2                         #  3     0xa   3      OPC=unpcklps_xmm_xmm         
  movsldup %xmm6, %xmm12                        #  4     0xd   5      OPC=movsldup_xmm_xmm         
  vpunpcklqdq %xmm2, %xmm12, %xmm1              #  5     0x12  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                          #  6     0x16  1      OPC=retq                     
                                                                                                   
.size target, .-target

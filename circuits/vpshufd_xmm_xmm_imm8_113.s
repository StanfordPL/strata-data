  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vpunpckldq %xmm2, %xmm9, %xmm15                 #  2     0x5   4      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpcklqdq %xmm11, %xmm9, %xmm2                #  3     0x9   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpbroadcastd %xmm2, %xmm1                       #  4     0xe   5      OPC=vpbroadcastd_xmm_xmm     
  vpor %xmm15, %xmm2, %xmm8                       #  5     0x13  5      OPC=vpor_xmm_xmm_xmm         
  movdqa %xmm8, %xmm1                             #  6     0x18  5      OPC=movdqa_xmm_xmm           
  retq                                            #  7     0x1d  1      OPC=retq                     
                                                                                                     
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  callq .move_128_064_xmm3_r10_r11  #  1     0     5      OPC=callq_label              
  callq .move_064_128_r10_r11_xmm1  #  2     0x5   5      OPC=callq_label              
  vpunpcklqdq %xmm1, %xmm3, %xmm6   #  3     0xa   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vunpcklpd %xmm6, %xmm2, %xmm1     #  4     0xe   4      OPC=vunpcklpd_xmm_xmm_xmm    
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target

  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  addpd %xmm10, %xmm3                             #  2     0x5   5      OPC=addpd_xmm_xmm            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7    #  3     0xa   5      OPC=callq_label              
  vpunpckhdq %xmm3, %xmm6, %xmm3                  #  4     0xf   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpcklqdq %xmm3, %xmm2, %xmm1                 #  5     0x13  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                                            #  6     0x17  1      OPC=retq                     
                                                                                                     
.size target, .-target
